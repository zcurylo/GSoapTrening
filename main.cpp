#include "soapMediaBindingProxy.h"
#include "MediaBinding.nsmap"

int main(int argc, char * argv[])
{
    MediaBindingProxy service;
    _ns1__GetProfiles first;
    _ns1__GetProfilesResponse first_response;
    service.soap->userid = "admin";
    service.soap->password = "admin";
    if(service.GetProfiles("http://192.168.22.71:81", NULL, &first, first_response ) == SOAP_OK)
    {
        std::cout<<"OK"<<"\n";
    }else
    {
        service.soap_stream_fault(std::cerr);
        service.destroy(); // delete data and release memory :-)
        std::cout<<"NOT OK\n";
    }


}
