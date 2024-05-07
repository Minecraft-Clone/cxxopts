-- cxxopts

project "cxxopts"
  kind "None"
  language "C++"
  cppdialect "C++17"
  systemversion "latest"

  targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
  objdir ("%{wks.location}/build/" .. outputdir .. "%{prj.name}")

  includedirs {
    "%{IncludeDir.cxxopts}"
  }

  files {
    "include/cxxopts.hpp",
  }