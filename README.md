To get started:
* download the ndds source after accepting their license here: http://www.rti.com/downloads/rti-dds.html
* obtain the premake tool, which you can find here: http://industriousone.com/premake
* write a premake4.lua file and declare your solution
* use dofile to execute premake-ndds.lua
* (optional) declare your own projects in premake4.lua and use the appropriate includedirs{} and links{} calls to link in ndds

a simple premake4.lua file:
```
solution "MySolution"
dofile( "ndds/premake-ndds.lua" )
```

This script was written to be dropped into the root folder of the source distribution.
