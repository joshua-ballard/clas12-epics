#!../../bin/linux-x86/ioccaen

< envPaths
cd ${TOP}

## Register all support components
dbLoadDatabase("dbd/ioccaen.dbd")
ioccaen_registerRecordDeviceDriver(pdbbase)

# call to run sy1527Init()
Init_CAEN()

# Start_CAEN - call to run sy1527Start(), sy1527GetMap(), sy1527PrintMap()

# hvecal2
Start_CAEN(10, "129.57.167.191")


## Load record instances
dbLoadTemplate("db/ecal2.substitutions")
dbLoadTemplate("db/ltcc2.substitutions")

cd ${TOP}/iocBoot/${IOC}
iocInit()

