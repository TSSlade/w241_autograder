#!/bin/sh -l

echo "Docker container is up!"
echo "We're here:"
pwd
echo "This is what we're working with:"
# tree -L 2 .
ls -lah
echo "Does this contain what we hope it does?"
# tree -L 2 .
ls -lah ./TSSlade
echo "And here's the stuff in the parent volume:"
# tree -L "${HOME}"
ls -lah ../
echo "And here's the stuff in the grandparent volume:"
# tree -L "${HOME}"
ls -lah ../../
echo "And here's the stuff in the Auntie Workspace volume:"
# tree -L "${HOME}"
ls -lah ../../workspace/
echo "And here's the stuff in the Auntie Home volume:"
# tree -L "${HOME}"
ls -lah ../../home/
echo "And here's the stuff in the Cousin mnt volume:"
# tree -L "${HOME}"
ls -lah ../../home/mnt/
