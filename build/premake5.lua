workspace "ffmpeg-cpp"
	configurations { "Debug", "Release" }
	platforms { "x64" }
	location (_ACTION)

	filter "configurations:Debug"
		defines { "DEBUG" }
		targetsuffix ("-d")
		symbols "On"
	filter {}

	filter "configurations:Release"
		defines { "NDEBUG" }
		optimize "On"
	filter {}

project "ffmpeg-cpp"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	targetdir "../Binaries"
	targetname "csgo-studio-common"

	configuration { "Debug" }
		qtsuffix "d"
	configuration { }

	files {
		"../ffmpeg-cpp/**.h",
		"../ffmpeg-cpp/**.cpp"
	}