######################################################################
# Automatically generated by qmake (2.01a) Wed Jul 20 00:08:43 2011
######################################################################

TEMPLATE = app
TARGET = 
DEPENDPATH += .
INCLUDEPATH += .

macx:CONFIG -= app_bundle

QT -= gui
QT += dbus

# Input
SOURCES += \
    main.cpp \
    daemonadaptor.cpp \
    daemoninterface.cpp \
    daemon.cpp \
    client.cpp \
    gccargs.cpp

HEADERS += \
    daemonadaptor.h \
    daemoninterface.h \
    daemon.h \
    client.h \
    gccargs.h

OTHER_FILES += \
    gccopts.gperf

gccopts_gperf.commands = gperf -I -C -l -L C++ gccopts.gperf --output-file gccopts_gperf.cpp -Z gccopts_gperf
gccopts_gperf.target = gccopts_gperf.cpp
gccopts_gperf.depends = gccopts.gperf
QMAKE_EXTRA_TARGETS += gccopts_gperf

PRE_TARGETDEPS += gccopts_gperf.cpp

LIBS += -lclang

unix {
    debug:OBJECTS_DIR = $${OUT_PWD}/.obj/debug-shared
    release:OBJECTS_DIR = $${OUT_PWD}/.obj/release-shared

    debug:MOC_DIR = $${OUT_PWD}/.moc/debug-shared
    release:MOC_DIR = $${OUT_PWD}/.moc/release-shared

    RCC_DIR = $${OUT_PWD}/.rcc/
    UI_DIR = $${OUT_PWD}/.uic/
}
