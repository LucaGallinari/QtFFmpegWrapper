# -------------------------------------------------
# Project created by QtCreator 2015-07-22T16:22:00
# -------------------------------------------------
QT       += core gui widgets

TARGET = QTFFmpegX64_2015
TEMPLATE = app

SOURCES +=  main.cpp \
            mainwindow.cpp \
            QVideoEncoder.cpp \
            QVideoDecoder.cpp

HEADERS +=  mainwindow.h \
            QVideoEncoder.h \
            QVideoDecoder.h \
            ffmpeg.h

FORMS += mainwindow.ui
RESOURCES += resource.qrc
DEFINES += DEVELMODE

# ##############################################################################
# Modify the below path so that it point to the folder containing
# .lib, .dll.a and .def files of ffmpeg
# ##############################################################################
FFMPEG_LIBRARY_PATH = ffmpeg_lib_win64



# ##############################################################################
# Do not modify from here: FFMPEG default settings
# ##############################################################################
# Add the path
LIBS += -L$$PWD/$$FFMPEG_LIBRARY_PATH

# Set list of required FFmpeg libraries
LIBS += -lavutil \
        -lavcodec \
        -lavformat \
        -lswscale

# Related includes
INCLUDEPATH +=  $$PWD/libavutil \
                $$PWD/libavcodec \
                $$PWD/libavdevice \
                $$PWD/libavformat \
                $$PWD/libswscale
DEPENDPATH +=   $$PWD/libavutil \
                $$PWD/libavcodec \
                $$PWD/libavdevice \
                $$PWD/libavformat \
                $$PWD/libswscale

# Requied for some C99 defines
DEFINES += __STDC_CONSTANT_MACROS

# ##############################################################################
# FFMPEG: END OF CONFIGURATION
# ##############################################################################


