#!/bin/sh -l

echo "Docker container is up!"
echo "We're here:" `pwd`
touch still-here-i-hope.txt

# echo "++++ We're here:"
# pwd
# ls -lah
# cd ../
# echo "Up 1:"
# pwd
# tree -L 2
# echo "In github/home:"
# ls -lah ./home
# echo "In ${HOME}:"
# ls -lah $HOME
# echo "In /home/runner/"
# tree -L 1 /home/runner

# echo "And here's the stuff in the Auntie Workspace volume:"
# # tree -L "${HOME}"
# ls -lah ../../workspace/
# echo "And here's the stuff in the Auntie Home volume:"
# # tree -L "${HOME}"
# ls -lah ../../home/
# echo "And here's the stuff in the Cousin mnt volume:"
# # tree -L "${HOME}"
# ls -lah ../../home/mnt/
