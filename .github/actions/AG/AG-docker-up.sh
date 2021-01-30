#!/bin/sh -l

echo "Docker container is up!"
echo "++++ We're here: ${pwd}"
echo "This is what we're working with:"
# tree -L 2 .
ls -lah
cd ../
echo "Up 1: ${pwd}"
ls -lah .
cd ../
echo "Up 2: ${pwd}"
ls -lah .
cd ../
echo "Up 3: ${pwd}"
ls -lah .
ls -lah ../../
# echo "And here's the stuff in the Auntie Workspace volume:"
# # tree -L "${HOME}"
# ls -lah ../../workspace/
# echo "And here's the stuff in the Auntie Home volume:"
# # tree -L "${HOME}"
# ls -lah ../../home/
# echo "And here's the stuff in the Cousin mnt volume:"
# # tree -L "${HOME}"
# ls -lah ../../home/mnt/
