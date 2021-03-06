#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/Road.o \
	${OBJECTDIR}/TLine.o \
	${OBJECTDIR}/detection.o \
	${OBJECTDIR}/lsd.o \
	${OBJECTDIR}/main.o \
	${OBJECTDIR}/miscellaneous.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=/usr/lib/libboost_program_options.a `pkg-config --libs opencv` `pkg-config --libs gl`  

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/obstacledetection.${CND_DLIB_EXT}

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/obstacledetection.${CND_DLIB_EXT}: /usr/lib/libboost_program_options.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/obstacledetection.${CND_DLIB_EXT}: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/obstacledetection.${CND_DLIB_EXT} ${OBJECTFILES} ${LDLIBSOPTIONS} -lGL -lglut

${OBJECTDIR}/Road.o: nbproject/Makefile-${CND_CONF}.mk Road.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` `pkg-config --cflags gl`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Road.o Road.cpp

${OBJECTDIR}/TLine.o: nbproject/Makefile-${CND_CONF}.mk TLine.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` `pkg-config --cflags gl`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/TLine.o TLine.cpp

${OBJECTDIR}/detection.o: nbproject/Makefile-${CND_CONF}.mk detection.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` `pkg-config --cflags gl`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/detection.o detection.cpp

${OBJECTDIR}/lsd.o: nbproject/Makefile-${CND_CONF}.mk lsd.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` `pkg-config --cflags gl`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lsd.o lsd.cpp

${OBJECTDIR}/main.o: nbproject/Makefile-${CND_CONF}.mk main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` `pkg-config --cflags gl`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

${OBJECTDIR}/miscellaneous.o: nbproject/Makefile-${CND_CONF}.mk miscellaneous.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` `pkg-config --cflags gl`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/miscellaneous.o miscellaneous.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/obstacledetection.${CND_DLIB_EXT}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
