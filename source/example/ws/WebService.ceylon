import javax.jws { webMethod, webService }
import javax.jws.soap {
    soapBinding
}

"The service interface, with a simple method."
by("chochos")
webService soapBinding
shared interface ServiceInterface {
    "Return a greeting to the caller."
    shared formal webMethod String hello(String person);
}

"The service implementation."
shared soapBinding webService {
    endpointInterface = "example.ws.ServiceInterface";
    name = "hello"; serviceName = "hello";
} class ServiceImpl() satisfies ServiceInterface {
    shared actual String hello(String person) {
        print("Saying hi to ``person``");
        return "Hello, ``person``!";
    }
}