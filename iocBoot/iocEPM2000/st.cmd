#!../../bin/linux-x86_64/EPM2000

< envPaths
epicsEnvSet("STREAM_PROTOCOL_PATH", "${TOP}/EPM2000App/Db")

cd "${TOP}"

## Register all support components
dbLoadDatabase("dbd/EPM2000.dbd")
EPM2000_registerRecordDeviceDriver(pdbbase)

## Configure serial port
drvAsynIPPortConfigure("SER1", "<IP>:<PORT>")

## Load record instances
dbLoadRecords("db/EPM2000.db", "P=EPM2000, R=_0:, PORT=SER1")

cd "${TOP}/iocBoot/${IOC}"
iocInit
dbl > pv.list
