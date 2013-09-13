To get started:
* download the ndds source after accepting their license here: http://www.rti.com/downloads/rti-dds.html
* obtain the premake tool, which you can find here: http://industriousone.com/premake
* write a premake4.lua file and declare your solution
* use dofile to execute premake-ndds.lua

Now you can declare your own projects in premake4.lua, and use the DoNddsSettings function to link the appropriate libs

```
-- declare my solution name
solution "MySolution"

-- create all the ndds projects into this solution
dofile( "ndds/premake-ndds.lua" )

-- declare a client project
project "MyProject"

-- do appropriate client project settings using a relpath to the location of the ndds src root
DoNddsSettings( "ndds" )

```

This script was written to be dropped into the root folder of the source distribution.
