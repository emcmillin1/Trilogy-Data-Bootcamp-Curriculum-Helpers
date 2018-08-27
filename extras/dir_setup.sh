#!/usr/local/bin/env bash

# wipe existing Trilogy  directory (testing purposes
rm -rf Trilogy

# Make Trilogy Directory, change dir
mkdir Data_Bootcamp
cd Data_Bootcamp

# clone repo within Trilogy repo
# git clone https://du.bootcampcontent.com/denver-coding-bootcamp/UDEN201805DATA1.git
# ... will need user auth

# make homework directory
mkdir HW_stage
cd HW_stage

# get user input to link each existing repo (loop)
for i in `seq 1 5`; do
    # ask user to pass repo name
    echo "Paste the link to Homework" $i "here"
    # read whatever was written
    read varname

    # make directory to hold object

    mkdir hw_$i
    cd hw_$i
    # clone passed repo name
    git clone $varname


    # move back for next round
    cd ..
done
