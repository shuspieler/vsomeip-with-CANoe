#include <iomanip>
#include <iostream>
#include <sstream>
#include <vsomeip/vsomeip.hpp>
#include <condition_variable>
#include <thread>

#define SAMPLE_SERVICE_ID 2002
#define SAMPLE_INSTANCE_ID 2

#define SAMPLE_EVENTGROUP_ID 1
#define SAMPLE_EVENT_ID 100

std::shared_ptr< vsomeip::application> adas_camf;
std::mutex mutex;
std::condition_variable condition;

void run() {
  std::unique_lock<std::mutex> its_lock(mutex);
  condition.wait(its_lock);

}

void on_notification(const std::shared_ptr<vsomeip::message> &_response) {

    std::stringstream its_message;
    its_message << "CLIENT: received a notification for event ["
            << std::setw(4) << std::setfill('0') << std::hex
            << _response->get_service() << "."
            << std::setw(4) << std::setfill('0') << std::hex
            << _response->get_instance() << "."
            << std::setw(4) << std::setfill('0') << std::hex
            << _response->get_method() << "] to Client/Session ["
            << std::setw(4) << std::setfill('0') << std::hex
            << _response->get_client() << "/"
            << std::setw(4) << std::setfill('0') << std::hex
            << _response->get_session()
            << "] = ";
    std::shared_ptr<vsomeip::payload> its_payload = _response->get_payload();
    its_message << "(" << std::dec << its_payload->get_length() << ") ";
    for (uint32_t i = 0; i < its_payload->get_length(); ++i)
        its_message << std::hex << std::setw(2) << std::setfill('0')
            << (int) its_payload->get_data()[i] << " ";

    const char* data = reinterpret_cast<const char*>(its_payload->get_data());
    std::string message(data, its_payload->get_length());
    its_message << " (Message: " << message << ")";
    std::cout << its_message.str() << std::endl;
}

void on_availability(vsomeip::service_t _service, vsomeip::instance_t _instance, bool _is_available) {
    std::cout << "CLIENT: Service ["
            << std::setw(4) << std::setfill('0') << std::hex << _service << "." << _instance
            << "] is "
            << (_is_available ? "available." : "NOT available.")
            << std::endl;
    
    std::set<vsomeip::eventgroup_t> its_groups;
    its_groups.insert(SAMPLE_EVENTGROUP_ID);
    adas_camf->request_event(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID, SAMPLE_EVENT_ID, its_groups);
    adas_camf->subscribe(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID, SAMPLE_EVENTGROUP_ID);
    condition.notify_one();
}

int main() {

    adas_camf = vsomeip::runtime::get()->create_application("ADAS");
    adas_camf->init();
    adas_camf->register_availability_handler(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID, on_availability);
    adas_camf->request_service(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID);
    adas_camf->register_message_handler(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID, SAMPLE_EVENT_ID, on_notification);
    std::thread sender(run);
    adas_camf->start();
}