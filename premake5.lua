project "ImGui"
	kind "StaticLib"
	language "C++"

	targetdir ("%{wks.location}/dependencies/libs/%{prj.name}")
    objdir ("%{wks.location}/dependencies/obj/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
		"imgui_tables.cpp",
		"imgui_impl_glfw.cpp",
		"imgui_impl_glfw.h",
		"imgui_impl_opengl3.cpp",
		"imgui_impl_opengl3.h",
		"imgui_impl_opengl3_loader.h"
	}

	includedirs { "%{prj.location}/../glfw/include" }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"