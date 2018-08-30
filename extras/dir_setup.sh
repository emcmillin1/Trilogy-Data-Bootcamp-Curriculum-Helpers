#!/usr/local/bin/env bash


# Make Data_Bootcamp Directory, change dir
mkdir Data_Bootcamp
cd Data_Bootcamp

# clone class repository
echo "Paste the link to your classes github repo here":
read repo_name
git clone $repo_name
# ... will need user auth

# make homework directory
mkdir HW_stage
cd HW_stage

# get user input to link each existing repo (loop)
for i in `seq 1 5`; do
    # ask user to pass repo name
    echo "Paste the git hub link to Homework" $i "here: (if no more repositories to paste in, just press enter)"
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

# clone curriculum_helpers repo to this location
# move up one
cd ..
# clone repo
git clone https://github.com/emcmillin1/curriculum_helpers.git

