HEADERS += \
    soapH.h \
    soapMediaBindingProxy.h \
    soapStub.h \
    stdsoap2.h \
    MediaBinding.nsmap

SOURCES += \
    dom.cpp \
    soapMediaBindingProxy.cpp \
    stdsoap2.cpp \
    main.cpp \
    soapC.cpp

#CONFIG += static
#CONFIG += dll

win32:LIBS += -lws2_32

DEFINES += WITH_IPV6
#DEFINES += WITH_GZIP
DEFINES += WITH_COOKIES
DEFINES += WITH_OPENSSL
DEFINES += WITH_DOM

win32:INCLUDEPATH +="C:/Program Files (x86)/GnuWin32/include"
win32:DEPENDPATH +="C:/Program Files (x86)/GnuWin32/include"

win32:LIBS += -L"C:/Program Files (x86)/GnuWin32/lib" -lssl

