# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/nesto/Dropbox/Trabajos Jose Ignacio/UniMary/Semester 4/CSC204/SFML-CSC-NEW/cmake-build-debug/_deps/freetype-src"
  "C:/Users/nesto/Dropbox/Trabajos Jose Ignacio/UniMary/Semester 4/CSC204/SFML-CSC-NEW/cmake-build-debug/_deps/freetype-build"
  "C:/Users/nesto/Dropbox/Trabajos Jose Ignacio/UniMary/Semester 4/CSC204/SFML-CSC-NEW/cmake-build-debug/_deps/freetype-subbuild/freetype-populate-prefix"
  "C:/Users/nesto/Dropbox/Trabajos Jose Ignacio/UniMary/Semester 4/CSC204/SFML-CSC-NEW/cmake-build-debug/_deps/freetype-subbuild/freetype-populate-prefix/tmp"
  "C:/Users/nesto/Dropbox/Trabajos Jose Ignacio/UniMary/Semester 4/CSC204/SFML-CSC-NEW/cmake-build-debug/_deps/freetype-subbuild/freetype-populate-prefix/src/freetype-populate-stamp"
  "C:/Users/nesto/Dropbox/Trabajos Jose Ignacio/UniMary/Semester 4/CSC204/SFML-CSC-NEW/cmake-build-debug/_deps/freetype-subbuild/freetype-populate-prefix/src"
  "C:/Users/nesto/Dropbox/Trabajos Jose Ignacio/UniMary/Semester 4/CSC204/SFML-CSC-NEW/cmake-build-debug/_deps/freetype-subbuild/freetype-populate-prefix/src/freetype-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/nesto/Dropbox/Trabajos Jose Ignacio/UniMary/Semester 4/CSC204/SFML-CSC-NEW/cmake-build-debug/_deps/freetype-subbuild/freetype-populate-prefix/src/freetype-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/nesto/Dropbox/Trabajos Jose Ignacio/UniMary/Semester 4/CSC204/SFML-CSC-NEW/cmake-build-debug/_deps/freetype-subbuild/freetype-populate-prefix/src/freetype-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
