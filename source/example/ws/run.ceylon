import org.springframework.context.support {
    FileSystemXmlApplicationContext
}

"Run the module `example.ws`."
shared void run() {
    print("Loading application context");
    value appContext = FileSystemXmlApplicationContext("resource/ws.xml");
    appContext.registerShutdownHook();
    print("Loading web service");
    appContext.getBean("ws");
}