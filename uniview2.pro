HEADERS += \
    soapH.h \
    soapMediaBindingProxy.h \
    soapStub.h \
    stdsoap2.h \
    MediaBinding.nsmap \
    mecevp.h \
    smdevp.h \
    threads.h \
    wsseapi.h

SOURCES += \
    dom.cpp \
    soapMediaBindingProxy.cpp \
    stdsoap2.cpp \
    main.cpp \
    soapC.cpp \
    mecevp.c \
    smdevp.c \
    threads.c \
    wsseapi.c

DEFINES += WITH_IPV6
#DEFINES += WITH_GZIP
DEFINES += WITH_COOKIES
DEFINES += WITH_OPENSSL
DEFINES += WITH_DOM


win32: {
#CONFIG += static
#CONFIG += dll
}

win32: {LIBS += -lws2_32
INCLUDEPATH +="C:/Program Files (x86)/GnuWin32/include"
DEPENDPATH +="C:/Program Files (x86)/GnuWin32/include"
LIBS += -L"C:/Program Files (x86)/GnuWin32/lib" -lssl
}

unix:!macx: {
INCLUDEPATH +="/usr/include/x86_64-linux-gnu"
#INCLUDEPATH +="/usr/include/c++/4.9"
INCLUDEPATH +="/usr/include/x86_64-linux-gnu/c++/4.9"
DEPENDPATH +="/usr/include/x86_64-linux-gnu"
LIBS += -L"/usr/lib/x86_64-linux-gnu" -lssl
PRE_TARGETDEPS += /usr/lib/x86_64-linux-gnu/libssl.a
}


