solution "test01"
	configurations {"debug", "release"}
	location "../build"

configuration "debug"
	targetdir "../bin/debug"

configuration "release"
	targetdir "../bin/release"

project "test01"
	kind "ConsoleApp"
	language "C++"
	files {"**.h", "**.cpp"} 
	includedirs {
		    "/Library/Frameworks/SDL2.framework/Headers"
	}
	links {"OpenGL.framework","CoreFoundation.framework","SDL2.framework"}
	linkoptions { "-F/Library/Frameworks" }

	configuration "debug"
		defines {"DEBUG"}
		flags {"Symbols"}

	configuration "release"
		defines {"NDEBUG"}
		flags {"Optimize"}
