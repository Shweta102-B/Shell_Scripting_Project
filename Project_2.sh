#!/bin/bash
#
echo "Please enter the package you want to use: search or install"
read package_name

echo "Enter the method name"
read method

search(){
echo "**************"
echo "Searching for package: $package_name"
sudo apt search $package_name

}

install(){
echo"**************"
echo "install package: $package_name"
sudo apt install $package_name
}

remove(){
echo "************"
echo "remove package: $package_name"
sudo apt remove $package_name
}


if [[ $method == "search" ]];then
	search

elif [[ $method == "install" ]];then
        install

elif [[ $method == "remove" ]];then
	remove
else
	echo -e "Please select valid method:\nsearch or install"

fi



