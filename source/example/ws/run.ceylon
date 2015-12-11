import org.springframework.context.support {
    ClassPathXmlApplicationContext
}

"Run the module `example.ws`."
shared void run() {
    print("Loading application context");
    value appContext = ClassPathXmlApplicationContext("/example/ws/ws.xml");
    appContext.registerShutdownHook();
    print("Loading web service");
    appContext.getBean("ws");
}
