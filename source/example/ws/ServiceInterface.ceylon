import javax.jws { webMethod, webService }
import javax.jws.soap {
    soapBinding
}

webService soapBinding
shared interface ServiceInterface {
    shared formal webMethod String hello(String person);
}

shared soapBinding webService {
    endpointInterface = "example.ws.ServiceInterface";
    name = "hello"; serviceName = "hello";
} class ServiceImpl()
        satisfies ServiceInterface {
    shared actual String hello(String person)
            => "Hello, ``person``!";
}