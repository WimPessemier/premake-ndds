--
-- Call this in any project{} that depend on ndds
-- 
function DoNddsSettings( root )

	includedirs
	{
		root .. "/log.1.0/include/share",
		root .. "/core.1.0/include/share",
		root .. "/dds_c.1.0/include/share",
		root .. "/dds_cpp.1.0/include/share",
	}

	configuration { "SharedLib or *App" }
		links
		{
			"ndds-dds-cpp",
			"ndds-dds-c",
			"ndds-xml",
			"ndds-pres",
			"ndds-writer-history",
			"ndds-dl-driver",
			"ndds-disc",
			"ndds-advlog",
			"ndds-commend",
			"ndds-event",
			"ndds-netio",
			"ndds-transport",
			"ndds-mig",
			"ndds-cdr",
			"ndds-reda",
			"ndds-clock",
			"ndds-core-version",
			"ndds-osapi",
			"ndds-log",
		}
	configuration {}

end

--
-- Used for boilerplate settings within this file
--
function DoNddsInternalSettings()

	defines
	{
		"RTI_THREADS=1",
		"RTI_MULTICAST=1",
		"RTI_IPV6=1",
		"RTI_SHARED_MEMORY=1",
		"RTI_ENDIAN_LITTLE=1",
	}

	configuration "x64"
		defines
		{
			"RTI_64BIT=1",
		}

	configuration "windows"
		defines
		{
			"WIN32_LEAN_AND_MEAN=1",
			"RTI_WIN32=1",
		}

	configuration "linux"
		defines
		{
			"LINUX=1",
			"RTI_UNIX=1",
			"RTI_LINUX=1",
			"RTI_LINUX26=1",
			"RTI_POSIX_THREADS=1",
			"RTI_POSIX_SEMAPHORES=1",
			"RTI_CPU_AFFINITY=1",
			"RTI_X64CPU=1",
			"RTI_GCC4=1",
		}

	configuration {}

end

project "ndds-advlog"
	uuid "81F2C36E-498F-4CFF-BED5-9BDCE811D735"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	includedirs
	{
		"advlog.1.0/include/share",

		"advlog.1.0/srcC/contextStack/h",
		"advlog.1.0/srcC/log/h",
		"advlog.1.0/srcC/logger/h",

		"advlog.1.0/srcC/contextStack/peer",
		"advlog.1.0/srcC/log/peer",
		"advlog.1.0/srcC/logger/peer",

		"log.1.0/include/share",
		"clock.1.0/include/share",
		"osapi.1.0/include/share",
		"reda.1.0/include/share",
	}

	files
	{
		"advlog.1.0/include/**.h",
		"advlog.1.0/srcC/**.h",
		"advlog.1.0/srcC/**.c",
	}

	excludes
	{
		"advlog.1.0/srcC/log/Log_silent.msg.c",
	}

project "ndds-cdr"
	uuid "2792A29E-73C5-4D06-AA53-FE21E2952DD8"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	includedirs
	{
		"cdr.1.0/include/share",

		"cdr.1.0/srcC/log/h",
		"cdr.1.0/srcC/stream/h",
		"cdr.1.0/srcC/typeCode/h",
		"cdr.1.0/srcC/typeObject/h",

		"cdr.1.0/srcC/log/peer",
		"cdr.1.0/srcC/stream/peer",
		"cdr.1.0/srcC/typeCode/peer",
		"cdr.1.0/srcC/typeObject/peer",

		"log.1.0/include/share",
		"osapi.1.0/include/share",
		"core.1.0/include/share",
	}

	files
	{
		"cdr.1.0/include/**.h",
		"cdr.1.0/srcC/**.h",
		"cdr.1.0/srcC/**.c",
	}

	excludes
	{
		"cdr.1.0/srcC/typeObject/typeObjectSequences.c",
		"cdr.1.0/srcC/log/Log_silent.msg.c",
	}

project "ndds-clock"
	uuid "662F2A06-716F-43B5-8014-34DC0C74D5E4"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	includedirs
	{
		"clock.1.0/include/share",

		"clock.1.0/srcC/highResolution/h",
		"clock.1.0/srcC/log/h",
		"clock.1.0/srcC/monotonic/h",
		"clock.1.0/srcC/system/h",

		"clock.1.0/srcC/highResolution/peer",
		"clock.1.0/srcC/log/peer",
		"clock.1.0/srcC/monotonic/peer",
		"clock.1.0/srcC/system/peer",

		"log.1.0/include/share",
		"osapi.1.0/include/share",
	}

	files
	{
		"clock.1.0/include/**.h",
		"clock.1.0/srcC/**.h",
		"clock.1.0/srcC/**.c",
	}

	excludes
	{
		"clock.1.0/srcC/log/Log_silent.msg.c",
	}

project "ndds-commend"
	uuid "083E6E58-B206-4341-A9BC-753C1C63EE02"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	includedirs
	{
		"commend.1.0/include/share",

		"commend.1.0/srcC/activeFacade/h",
		"commend.1.0/srcC/anonr/h",
		"commend.1.0/srcC/anonw/h",
		"commend.1.0/srcC/ber/h",
		"commend.1.0/srcC/bew/h",
		"commend.1.0/srcC/facade/h",
		"commend.1.0/srcC/fragmentedSampleTable/h",
		"commend.1.0/srcC/log/h",
		"commend.1.0/srcC/passiveFacade/h",
		"commend.1.0/srcC/srr/h",
		"commend.1.0/srcC/srw/h",

		"commend.1.0/srcC/activeFacade/peer",
		"commend.1.0/srcC/anonr/peer",
		"commend.1.0/srcC/anonw/peer",
		"commend.1.0/srcC/ber/peer",
		"commend.1.0/srcC/bew/peer",
		"commend.1.0/srcC/facade/peer",
		"commend.1.0/srcC/fragmentedSampleTable/peer",
		"commend.1.0/srcC/log/peer",
		"commend.1.0/srcC/passiveFacade/peer",
		"commend.1.0/srcC/srr/peer",
		"commend.1.0/srcC/srw/peer",

		"log.1.0/include/share",
		"osapi.1.0/include/share",
		"core.1.0/include/share",
	}

	files
	{
		"commend.1.0/include/**.h",
		"commend.1.0/srcC/**.h",
		"commend.1.0/srcC/**.c",
	}

	excludes
	{
		"commend.1.0/srcC/log/Log_silent.msg.c",
	}

project "ndds-core-version"
	uuid "5A6D61BB-3E41-473F-BC72-7E1E134A38ED"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	defines
	{
		"RTI_MODULE_VERSION_MAJOR=5",
		"RTI_MODULE_VERSION_MINOR=0",
		"RTI_MODULE_LETTER_RELEASE=a",
		"RTI_MODULE_VERSION_BUILD=0",
	}

	includedirs
	{
		"core_version.1.0/include/share",

		"core_version.1.0/srcC/log/h",
		"core_version.1.0/srcC/version/h",

		"core_version.1.0/srcC/log/peer",
		"core_version.1.0/srcC/version/peer",

		"log.1.0/include/share",
		"osapi.1.0/include/share",
		"core.1.0/include/share",
	}

	files
	{
		"core_version.1.0/include/**.h",
		"core_version.1.0/srcC/**.h",
		"core_version.1.0/srcC/**.c",
	}

	excludes
	{
		"core_version.1.0/srcC/log/Log_silent.msg.c",
	}

project "ndds-disc"
	uuid "68EE9FE9-D33D-40AD-B544-88C01908A4AE"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	defines
	{
		"RTI_MODULE_VERSION_MAJOR=5",
		"RTI_MODULE_VERSION_MINOR=0",
		"RTI_MODULE_LETTER_RELEASE=a",
		"RTI_MODULE_VERSION_BUILD=0",
	}

	includedirs
	{
		"disc.2.0/include/share",

		"disc.2.0/srcC/builtin/h",
		"disc.2.0/srcC/common/h",
		"disc.2.0/srcC/log/h",
		"disc.2.0/srcC/pluggable/h",
		"disc.2.0/srcC/simple_discovery_plugin/h",

		"disc.2.0/srcC/builtin/peer",
		"disc.2.0/srcC/common/peer",
		"disc.2.0/srcC/log/peer",
		"disc.2.0/srcC/pluggable/peer",
		"disc.2.0/srcC/simple_discovery_plugin/peer",

		"log.1.0/include/share",
		"osapi.1.0/include/share",
		"core.1.0/include/share",
	}

	files
	{
		"disc.2.0/include/**.h",
		"disc.2.0/srcC/**.h",
		"disc.2.0/srcC/**.c",
	}

	excludes
	{
		"disc.2.0/srcC/log/Log_silent.msg.c",
	}

project "ndds-dds-c"
	uuid "1BE37AFE-AA0D-41FC-9132-2939301803AE"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	defines
	{
		"RTI_NDDS_VERSION_MAJOR=5",
		"RTI_NDDS_VERSION_MINOR=0",
		"RTI_NDDS_VERSION_RELEASE=0",
		"RTI_NDDS_VERSION_REVISION=0",
		"RTI_MODULE_VERSION_MAJOR=5",
		"RTI_MODULE_VERSION_MINOR=0",
		"RTI_MODULE_LETTER_RELEASE=a",
		"RTI_MODULE_VERSION_BUILD=0",
	}

	includedirs
	{
		"dds_c.1.0/include/share",

		"dds_c.1.0/srcC/builtin/h",
		"dds_c.1.0/srcC/builtintypes/h",
		"dds_c.1.0/srcC/data/h",
		"dds_c.1.0/srcC/domain/h",
		"dds_c.1.0/srcC/dynamicdata/h",
		"dds_c.1.0/srcC/factory_plugin/h",
		"dds_c.1.0/srcC/infrastructure/h",
		"dds_c.1.0/srcC/license/h",
		"dds_c.1.0/srcC/log/h",
		"dds_c.1.0/srcC/monitoring/h",
		"dds_c.1.0/srcC/ndds_config/h",
		"dds_c.1.0/srcC/ndds_discovery/h",
		"dds_c.1.0/srcC/ndds_transport/h",
		"dds_c.1.0/srcC/ndds_utility/h",
		"dds_c.1.0/srcC/ndds_writerhistory/h",
		"dds_c.1.0/srcC/publication/h",
		"dds_c.1.0/srcC/sequence/h",
		"dds_c.1.0/srcC/sqlfilter/h",
		"dds_c.1.0/srcC/string/h",
		"dds_c.1.0/srcC/subscription/h",
		"dds_c.1.0/srcC/topic/h",
		"dds_c.1.0/srcC/typecode/h",
		"dds_c.1.0/srcC/typeobject/h",
		"dds_c.1.0/srcC/xml/h",

		"dds_c.1.0/srcC/builtin/peer",
		"dds_c.1.0/srcC/builtintypes/peer",
		"dds_c.1.0/srcC/data/peer",
		"dds_c.1.0/srcC/domain/peer",
		"dds_c.1.0/srcC/dynamicdata/peer",
		"dds_c.1.0/srcC/factory_plugin/peer",
		"dds_c.1.0/srcC/infrastructure/peer",
		"dds_c.1.0/srcC/license/peer",
		"dds_c.1.0/srcC/log/peer",
		"dds_c.1.0/srcC/monitoring/peer",
		"dds_c.1.0/srcC/ndds_config/peer",
		"dds_c.1.0/srcC/ndds_discovery/peer",
		"dds_c.1.0/srcC/ndds_transport/peer",
		"dds_c.1.0/srcC/ndds_utility/peer",
		"dds_c.1.0/srcC/ndds_writerhistory/peer",
		"dds_c.1.0/srcC/publication/peer",
		"dds_c.1.0/srcC/sequence/peer",
		"dds_c.1.0/srcC/sqlfilter/peer",
		"dds_c.1.0/srcC/string/peer",
		"dds_c.1.0/srcC/subscription/peer",
		"dds_c.1.0/srcC/topic/peer",
		"dds_c.1.0/srcC/typecode/peer",
		"dds_c.1.0/srcC/typeobject/peer",
		"dds_c.1.0/srcC/xml/peer",

		"core.1.0/include/share",
		"log.1.0/include/share",
	}

	files
	{
		"dds_c.1.0/include/**.h",
		"dds_c.1.0/srcC/**.h",
		"dds_c.1.0/srcC/**.c",
	}

	excludes
	{
		"dds_c.1.0/srcC/log/Log_silent.msg.c",
		"dds_c.1.0/srcC/log/Context_silent.msg.c",
	}

project "ndds-dds-cpp"
	uuid "65C7A815-8078-479A-8DDB-86FB2B289871"
	language "C++"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	defines
	{
		"RTI_USE_CPP_API=1",
		"RTI_MODULE_VERSION_MAJOR=5",
		"RTI_MODULE_VERSION_MINOR=0",
		"RTI_MODULE_LETTER_RELEASE=a",
		"RTI_MODULE_VERSION_BUILD=0",
	}

	includedirs
	{
		"dds_cpp.1.0/include/share",

		"dds_cpp.1.0/srcCxx/builtin/h",
		"dds_cpp.1.0/srcCxx/builtintypes/h",
		"dds_cpp.1.0/srcCxx/data/h",
		"dds_cpp.1.0/srcCxx/domain/h",
		"dds_cpp.1.0/srcCxx/dynamicdata/h",
		"dds_cpp.1.0/srcCxx/factory_plugin/h",
		"dds_cpp.1.0/srcCxx/infrastructure/h",
		"dds_cpp.1.0/srcCxx/namespace/h",
		"dds_cpp.1.0/srcCxx/ndds_config/h",
		"dds_cpp.1.0/srcCxx/ndds_discovery/h",
		"dds_cpp.1.0/srcCxx/ndds_transport/h",
		"dds_cpp.1.0/srcCxx/ndds_utility/h",
		"dds_cpp.1.0/srcCxx/ndds_writerhistory/h",
		"dds_cpp.1.0/srcCxx/publication/h",
		"dds_cpp.1.0/srcCxx/sequence/h",
		"dds_cpp.1.0/srcCxx/subscription/h",
		"dds_cpp.1.0/srcCxx/topic/h",
		"dds_cpp.1.0/srcCxx/typecode/h",

		"dds_cpp.1.0/srcCxx/builtin/peer",
		"dds_cpp.1.0/srcCxx/builtintypes/peer",
		"dds_cpp.1.0/srcCxx/data/peer",
		"dds_cpp.1.0/srcCxx/domain/peer",
		"dds_cpp.1.0/srcCxx/dynamicdata/peer",
		"dds_cpp.1.0/srcCxx/factory_plugin/peer",
		"dds_cpp.1.0/srcCxx/infrastructure/peer",
		"dds_cpp.1.0/srcCxx/namespace/peer",
		"dds_cpp.1.0/srcCxx/ndds_config/peer",
		"dds_cpp.1.0/srcCxx/ndds_discovery/peer",
		"dds_cpp.1.0/srcCxx/ndds_transport/peer",
		"dds_cpp.1.0/srcCxx/ndds_utility/peer",
		"dds_cpp.1.0/srcCxx/ndds_writerhistory/peer",
		"dds_cpp.1.0/srcCxx/publication/peer",
		"dds_cpp.1.0/srcCxx/sequence/peer",
		"dds_cpp.1.0/srcCxx/subscription/peer",
		"dds_cpp.1.0/srcCxx/topic/peer",
		"dds_cpp.1.0/srcCxx/typecode/peer",

		"core.1.0/include/share",
		"log.1.0/include/share",
		"dds_c.1.0/include/share",
	}

	files
	{
		"dds_cpp.1.0/include/**.h",
		"dds_cpp.1.0/srcCxx/**.h",
		"dds_cpp.1.0/srcCxx/**.cxx",
	}

	excludes
	{
		"dds_cpp.1.0/srcCxx/ndds_utility/BuildNumber.cxx"	
	}

	configuration "windows"
		links
		{
			"ws2_32",
		}

project "ndds-dl-driver"
	uuid "654DE180-5D88-4A5D-A102-85FB6F349DF0"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	includedirs
	{
		"dl_driver.1.0/include/share",

		"dl_driver.1.0/srcC/log/h",
		"dl_driver.1.0/srcC/odbc/h",
		"dl_driver.1.0/srcC/odbcSetup/h",

		"dl_driver.1.0/srcC/log/peer",
		"dl_driver.1.0/srcC/odbc/peer",
		"dl_driver.1.0/srcC/odbcSetup/peer",

		"log.1.0/include/share",
		"osapi.1.0/include/share",
		"core.1.0/include/share",
	}

	files
	{
		"dl_driver.1.0/include/**.h",
		"dl_driver.1.0/srcC/**.h",
		"dl_driver.1.0/srcC/**.c",
	}

	excludes
	{
		"dl_driver.1.0/srcC/log/Log_silent.msg.c",
	}

project "ndds-event"
	uuid "44DF5AB9-D5C7-49BF-86D7-E11D5AA477DF"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	includedirs
	{
		"event.1.0/include/share",

		"event.1.0/srcC/activeDatabase/h",
		"event.1.0/srcC/activeGenerator/h",
		"event.1.0/srcC/generator/h",
		"event.1.0/srcC/jobDispatcher/h",
		"event.1.0/srcC/log/h",
		"event.1.0/srcC/passiveGenerator/h",
		"event.1.0/srcC/polledTimer/h",
		"event.1.0/srcC/smartTimer/h",

		"event.1.0/srcC/activeDatabase/peer",
		"event.1.0/srcC/activeGenerator/peer",
		"event.1.0/srcC/generator/peer",
		"event.1.0/srcC/jobDispatcher/peer",
		"event.1.0/srcC/log/peer",
		"event.1.0/srcC/passiveGenerator/peer",
		"event.1.0/srcC/polledTimer/peer",
		"event.1.0/srcC/smartTimer/peer",

		"log.1.0/include/share",
		"osapi.1.0/include/share",
		"core.1.0/include/share",
	}

	files
	{
		"event.1.0/include/**.h",
		"event.1.0/srcC/**.h",
		"event.1.0/srcC/**.c",
	}

	excludes
	{
		"event.1.0/srcC/log/Log_silent.msg.c",
	}

project "ndds-log"
	uuid "84563C4F-9DF6-4CD0-BC3F-CA61F64D500A"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	includedirs
	{
		"log.1.0/include/share",
	}

	files
	{
		"log.1.0/include/**.h",
		"log.1.0/srcC/**.h",
		"log.1.0/srcC/**.c",
	}

	excludes
	{
		"log.1.0/srcC/common/Log_silent.msg.c",
	}

project "ndds-mig"
	uuid "77BFF179-1ADD-4FAA-A95A-53C56E349B3D"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	includedirs
	{
		"mig.2.0/include/share",

		"mig.2.0/srcC/generator/h",
		"mig.2.0/srcC/interpreter/h",
		"mig.2.0/srcC/log/h",
		"mig.2.0/srcC/rtps/h",

		"mig.2.0/srcC/generator/peer",
		"mig.2.0/srcC/interpreter/peer",
		"mig.2.0/srcC/log/peer",
		"mig.2.0/srcC/rtps/peer",

		"log.1.0/include/share",
		"osapi.1.0/include/share",
		"core.1.0/include/share",
	}

	files
	{
		"mig.2.0/include/**.h",
		"mig.2.0/srcC/**.h",
		"mig.2.0/srcC/**.c",
	}

	excludes
	{
		"mig.2.0/srcC/log/Log_silent.msg.c",
	}

project "ndds-netio"
	uuid "49022DF5-9AD9-4DA5-83F1-DC1F59374C3B"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	includedirs
	{
		"netio.1.1/include/share",

		"netio.1.1/srcC/common/h",
		"netio.1.1/srcC/configurator/h",
		"netio.1.1/srcC/log/h",
		"netio.1.1/srcC/receiver/h",
		"netio.1.1/srcC/sender/h",

		"netio.1.1/srcC/common/peer",
		"netio.1.1/srcC/configurator/peer",
		"netio.1.1/srcC/log/peer",
		"netio.1.1/srcC/receiver/peer",
		"netio.1.1/srcC/sender/peer",

		"log.1.0/include/share",
		"osapi.1.0/include/share",
		"core.1.0/include/share",
	}

	files
	{
		"netio.1.1/include/**.h",
		"netio.1.1/srcC/**.h",
		"netio.1.1/srcC/**.c",
	}

	excludes
	{
		"netio.1.1/srcC/log/Log_silent.msg.c",
	}

project "ndds-osapi"
	uuid "B0651314-FE57-41AC-B19A-DB81131B7554"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	includedirs
	{
		"osapi.1.0/include/share",

		"osapi.1.0/srcC/library/h",
		"osapi.1.0/srcC/log/h",
		"osapi.1.0/srcC/memory/h",
		"osapi.1.0/srcC/process/h",
		"osapi.1.0/srcC/semaphore/h",
		"osapi.1.0/srcC/sharedMemory/h",
		"osapi.1.0/srcC/socket/h",
		"osapi.1.0/srcC/thread/h",
		"osapi.1.0/srcC/threadFactory/h",
		"osapi.1.0/srcC/utility/h",

		"osapi.1.0/srcC/library/peer",
		"osapi.1.0/srcC/log/peer",
		"osapi.1.0/srcC/memory/peer",
		"osapi.1.0/srcC/process/peer",
		"osapi.1.0/srcC/semaphore/peer",
		"osapi.1.0/srcC/sharedMemory/peer",
		"osapi.1.0/srcC/socket/peer",
		"osapi.1.0/srcC/thread/peer",
		"osapi.1.0/srcC/threadFactory/peer",
		"osapi.1.0/srcC/utility/peer",

		"log.1.0/include/share",
	}

	files
	{
		"osapi.1.0/include/**.h",
		"osapi.1.0/srcC/**.h",
		"osapi.1.0/srcC/**.c",
	}

	excludes
	{
		"osapi.1.0/srcC/log/Log_silent.msg.c",
		"osapi.1.0/srcC/sharedMemory/sharedMemorySegment_inty.c",
		"osapi.1.0/srcC/sharedMemory/sharedMemorySegment_posix.c",
		"osapi.1.0/srcC/sharedMemory/sharedMemorySegment_sysv.c",
		"osapi.1.0/srcC/sharedMemory/sharedMemorySegment_vx6.c",
		"osapi.1.0/srcC/sharedMemory/sharedMemorySegment_win.c",
		"osapi.1.0/srcC/sharedMemory/sharedMemorySemMutex_inty.c",
		"osapi.1.0/srcC/sharedMemory/sharedMemorySemMutex_posix.c",
		"osapi.1.0/srcC/sharedMemory/sharedMemorySemMutex_sysv.c",
		"osapi.1.0/srcC/sharedMemory/sharedMemorySemMutex_vx6.c",
		"osapi.1.0/srcC/sharedMemory/sharedMemorySemMutex_win.c",
		"osapi.1.0/srcC/sharedMemory/shm_area.c",
		"osapi.1.0/srcC/sharedMemory/sysvTrack.c",
		"osapi.1.0/srcC/sharedMemory/sysvTrack.h",
	}

project "ndds-pres"
	uuid "22833811-40F2-4C75-9108-65B0E0658D46"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	includedirs
	{
		"pres.1.0/include/share",

		"pres.1.0/srcC/common/h",
		"pres.1.0/srcC/ConditionWaitset/h",
		"pres.1.0/srcC/cstReaderCollator/h",
		"pres.1.0/srcC/liveliness/h",
		"pres.1.0/srcC/log/h",
		"pres.1.0/srcC/participant/h",
		"pres.1.0/srcC/psReaderQueue/h",
		"pres.1.0/srcC/psService/h",
		"pres.1.0/srcC/readerQueue/h",
		"pres.1.0/srcC/typePlugin/h",
		"pres.1.0/srcC/writerHistoryDriver/h",

		"pres.1.0/srcC/common/peer",
		"pres.1.0/srcC/ConditionWaitset/peer",
		"pres.1.0/srcC/cstReaderCollator/peer",
		"pres.1.0/srcC/liveliness/peer",
		"pres.1.0/srcC/log/peer",
		"pres.1.0/srcC/participant/peer",
		"pres.1.0/srcC/psReaderQueue/peer",
		"pres.1.0/srcC/psService/peer",
		"pres.1.0/srcC/readerQueue/peer",
		"pres.1.0/srcC/typePlugin/peer",
		"pres.1.0/srcC/writerHistoryDriver/peer",

		"log.1.0/include/share",
		"osapi.1.0/include/share",
		"core.1.0/include/share",
	}

	files
	{
		"pres.1.0/include/**.h",
		"pres.1.0/srcC/**.h",
		"pres.1.0/srcC/**.c",
	}

	excludes
	{
		"pres.1.0/srcC/participant/ParticipantParam.c",
		"pres.1.0/srcC/log/Log_silent.msg.c",
	}

project "ndds-reda"
	uuid "BA53A5E6-B961-4779-901F-1E7DB721BA68"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	includedirs
	{
		"reda.1.0/include/share",

		"reda.1.0/srcC/buffer/h",
		"reda.1.0/srcC/circularList/h",
		"reda.1.0/srcC/concurrentQueue/h",
		"reda.1.0/srcC/database/h",
		"reda.1.0/srcC/dbShell/h",
		"reda.1.0/srcC/fastBuffer/h",
		"reda.1.0/srcC/hash/h",
		"reda.1.0/srcC/hashedSkiplist/h",
		"reda.1.0/srcC/inlineList/h",
		"reda.1.0/srcC/log/h",
		"reda.1.0/srcC/orderedDataType/h",
		"reda.1.0/srcC/sequenceNumber/h",
		"reda.1.0/srcC/skiplist/h",
		"reda.1.0/srcC/string/h",
		"reda.1.0/srcC/table/h",
		"reda.1.0/srcC/worker/h",

		"reda.1.0/srcC/buffer/peer",
		"reda.1.0/srcC/circularList/peer",
		"reda.1.0/srcC/concurrentQueue/peer",
		"reda.1.0/srcC/database/peer",
		"reda.1.0/srcC/dbShell/peer",
		"reda.1.0/srcC/fastBuffer/peer",
		"reda.1.0/srcC/hash/peer",
		"reda.1.0/srcC/hashedSkiplist/peer",
		"reda.1.0/srcC/inlineList/peer",
		"reda.1.0/srcC/log/peer",
		"reda.1.0/srcC/orderedDataType/peer",
		"reda.1.0/srcC/sequenceNumber/peer",
		"reda.1.0/srcC/skiplist/peer",
		"reda.1.0/srcC/string/peer",
		"reda.1.0/srcC/table/peer",
		"reda.1.0/srcC/worker/peer",

		"log.1.0/include/share",
		"osapi.1.0/include/share",
		"core.1.0/include/share",
	}

	files
	{
		"reda.1.0/include/**.h",
		"reda.1.0/srcC/**.h",
		"reda.1.0/srcC/**.c",
	}

	excludes
	{
		"reda.1.0/srcC/circularList/CircularList.c",
		"reda.1.0/srcC/log/Log_silent.msg.c",
	}

project "ndds-transport"
	uuid "68EF69FD-816D-4C85-B111-5BB8A5E0A784"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	includedirs
	{
		"transport.1.0/include/share",

		"transport.1.0/srcC/common/h",
		"transport.1.0/srcC/intra/h",
		"transport.1.0/srcC/log/h",
		"transport.1.0/srcC/meta/h",
		"transport.1.0/srcC/shmem/h",
		"transport.1.0/srcC/socketutil/h",
		"transport.1.0/srcC/udpv4/h",
		"transport.1.0/srcC/udpv6/h",

		"transport.1.0/srcC/common/peer",
		"transport.1.0/srcC/intra/peer",
		"transport.1.0/srcC/log/peer",
		"transport.1.0/srcC/meta/peer",
		"transport.1.0/srcC/shmem/peer",
		"transport.1.0/srcC/socketutil/peer",
		"transport.1.0/srcC/udpv4/peer",
		"transport.1.0/srcC/udpv6/peer",

		"log.1.0/include/share",
		"osapi.1.0/include/share",
		"core.1.0/include/share",
	}

	files
	{
		"transport.1.0/include/**.h",
		"transport.1.0/srcC/**.h",
		"transport.1.0/srcC/**.c",
	}

	excludes
	{
		"transport.1.0/srcC/log/Log_silent.msg.c",
	}

project "ndds-writer-history"
	uuid "07CED36F-F05E-4510-ACDD-8C198265D599"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	includedirs
	{
		"writer_history.1.0/include/share",

		"writer_history.1.0/srcC/common/h",
		"writer_history.1.0/srcC/common_plugin/h",
		"writer_history.1.0/srcC/log/h",
		"writer_history.1.0/srcC/memory/h",
		"writer_history.1.0/srcC/odbc/h",
		"writer_history.1.0/srcC/session/h",

		"writer_history.1.0/srcC/common/peer",
		"writer_history.1.0/srcC/common_plugin/peer",
		"writer_history.1.0/srcC/log/peer",
		"writer_history.1.0/srcC/memory/peer",
		"writer_history.1.0/srcC/odbc/peer",
		"writer_history.1.0/srcC/session/peer",

		"log.1.0/include/share",
		"osapi.1.0/include/share",
		"core.1.0/include/share",
	}

	files
	{
		"writer_history.1.0/include/**.h",
		"writer_history.1.0/srcC/**.h",
		"writer_history.1.0/srcC/**.c",
	}

	excludes
	{
		"writer_history.1.0/srcC/log/Log_silent.msg.c",
	}

project "ndds-xml"
	uuid "8696BE90-DDB5-4F00-B6B6-95C6A145AF08"
	language "C"
	kind "StaticLib"

	for i, config in ipairs( configurations() ) do
		configuration( { config } )
			targetdir( "../../" .. config .. "/plugins" )
	end
	configuration{}

	DoNddsInternalSettings()

	defines
	{
		"XML_STATIC=1",
		"XML_DTD=1",
	}

	configuration "windows"
		defines
		{
			"COMPILED_FROM_DSP=1",
		}

	configuration "linux"
		defines
		{
			"HAVE_MEMMOVE=1",
		}

	configuration {}

	includedirs
	{
		"xml.1.0/include/share",

		"xml.1.0/srcC/expat/h",
		"xml.1.0/srcC/log/h",
		"xml.1.0/srcC/parser/h",

		"xml.1.0/srcC/expat/peer",
		"xml.1.0/srcC/log/peer",
		"xml.1.0/srcC/parser/peer",

		"log.1.0/include/share",
		"osapi.1.0/include/share",
		"core.1.0/include/share",
	}

	files
	{
		"xml.1.0/include/**.h",
		"xml.1.0/srcC/**.h",
		"xml.1.0/srcC/**.c",
	}

	excludes
	{
		"xml.1.0/srcC/expat/xmltok_*",
		"xml.1.0/srcC/log/Log_silent.msg.c",
	}
