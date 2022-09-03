#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "MyMethod.h"
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/virtualMath/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    MyMethod myMethod;

    engine.rootContext()->setContextProperty("myObject",&myMethod);

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
