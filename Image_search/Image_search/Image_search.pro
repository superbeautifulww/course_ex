INCLUDEPATH += D:/opencv/opencv3.4-install/install/include
INCLUDEPATH += D:/opencv/opencv3.4-install/install/include/opencv
INCLUDEPATH += D:/opencv/opencv3.4-install/install/include/opencv2
LIBS += D:/opencv/opencv3.4-install/install/x86/mingw/lib/libopencv_*.a

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11


# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

TRANSLATIONS += \
    Image_search_zh_CN.ts

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../opencv/build/x64/vc15/lib/ -lopencv_world455
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x64/vc15/lib/ -lopencv_world455d
else:unix: LIBS += -L$$PWD/../../opencv/build/x64/vc15/lib/ -lopencv_world455

INCLUDEPATH += $$PWD/../../opencv/build/include
DEPENDPATH += $$PWD/../../opencv/build/include

win32:CONFIG(release, debug|release): LIBS += -LE:/opencv4/opencv/build/x64/vc14/lib/ -lopencv_world460
else:win32:CONFIG(debug, debug|release): LIBS += -LE:/opencv4/opencv/build/x64/vc14/lib/ -lopencv_world460d
else:unix: LIBS += -LE:/opencv4/opencv/build/x64/vc14/lib/ -lopencv_world460

INCLUDEPATH += E:/opencv4/opencv/build/include
DEPENDPATH += E:/opencv4/opencv/build/include

win32:CONFIG(release, debug|release): LIBS += -LE:/opencv4/opencv/build/x64/vc14/lib/ -lopencv_world460
else:win32:CONFIG(debug, debug|release): LIBS += -LE:/opencv4/opencv/build/x64/vc14/lib/ -lopencv_world460d
else:unix: LIBS += -LE:/opencv4/opencv/build/x64/vc14/lib/ -lopencv_world460

INCLUDEPATH += E:/opencv4/opencv/build/x64/include
DEPENDPATH += E:/opencv4/opencv/build/x64/include
