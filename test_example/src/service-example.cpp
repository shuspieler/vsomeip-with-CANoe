#include <iomanip>
#include <iostream>
#include <sstream>
#include <cstring>
#include <vsomeip/vsomeip.hpp>

#define SAMPLE_SERVICE_ID 2002
#define SAMPLE_INSTANCE_ID 2

#define SAMPLE_EVENTGROUP_ID 1
#define SAMPLE_EVENT_ID 100

std::shared_ptr<vsomeip::payload> payload;
std::shared_ptr<vsomeip::application> adas_camf;


int main(){

    const char* its_data = "vsomeip says hi!";
    payload = vsomeip::runtime::get()->create_payload();
    payload->set_data(reinterpret_cast<const vsomeip::byte_t*>(its_data), strlen(its_data) + 1);
    std::set<vsomeip::eventgroup_t> its_groups;
    its_groups.insert(SAMPLE_EVENTGROUP_ID);

   adas_camf = vsomeip::runtime::get()->create_application("CAMF");
   adas_camf->init();
   adas_camf->offer_service(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID);
   adas_camf->offer_event(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID, SAMPLE_EVENT_ID, its_groups);
   adas_camf->notify(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID, SAMPLE_EVENT_ID, payload);
   adas_camf->start();
}
