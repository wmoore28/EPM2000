TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS BELOW HERE

# Build the IOC application
PROD_IOC = EPM2000

# EPM2000.dbd will be created and installed
DBD += EPM2000.dbd

# EPM2000.dbd will include these files:
EPM2000_DBD += base.dbd
EPM2000_DBD += stream.dbd
EPM2000_DBD += drvAsynIPPort.dbd
EPM2000_DBD += asyn.dbd

# EPM2000_registerRecordDeviceDriver.cpp derives from EPM2000.dbd
EPM2000_SRCS += EPM2000_registerRecordDeviceDriver.cpp

# Build the main IOC entry point where needed
EPM2000_SRCS_DEFAULT += EPM2000Main.cpp
EPM2000_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#EPM2000_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Link in the code from our support library
EPM2000_LIBS += stream
EPM2000_LIBS += asyn
EPM2000_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD EXTRA GNUMAKE RULES BELOW HERE

