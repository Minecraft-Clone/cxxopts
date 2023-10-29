-- cxxopts

project "cxxopts"
  kind "None"
  language "C++"
  cppdialect "C++17"
  systemversion "latest"

  targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
  objdir ("%{wks.location}/build/" .. outputdir .. "%{prj.name}")

  IncludeDir["cxxopts"] = "%{wks.location}/libs/cxxopts/include"

  includedirs {
    "%{IncludeDir.cxxopts}"
  }

  files {
    "premake5.lua",
    "include/cxxopts.hpp",
  }