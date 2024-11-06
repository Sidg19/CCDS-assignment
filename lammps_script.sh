#This script does not install any additional packages. For packages, we need to recompile by adding extra flags


#First is installing lammps dependencies and code through git 

git clone --depth 1000 -b release https://github.com/lammps/lammps.git mylammps

#This command creates a directory with name mylammps. The name can be anything. Depth kept at 1000 in order to avoid downloading everything since the repository is very big. --depth would ensure installation of all the head commits.  

cd mylammps

mkdir build 

#This command creates a build subdirectory inside of the mylammps directory. This is where we'll build and compile the lammps software. 

cd build

cmake ../cmake/ 

#To set up the files and environment for cmake, we need to access the CMakeLists.txt or CMakeCache.txt file present in the cmake folder. This file contains all active settings for the build. 

cmake --build /home/sid/project1/mylammps/build/ 

#This is to compile the code and create the executable. 


