#!/bin/sh -l

echo "Docker container is up!"
echo "This is what we're working with:"
# tree -L 2 .
ls -lah
echo "And here's the stuff in the parent volume:"
# tree -L "${HOME}"
ls -lah ../
echo "And here's the stuff in the grandparent volume:"
# tree -L "${HOME}"
ls -lah ../../
echo "And here's the stuff in the Auntie Home volume:"
# tree -L "${HOME}"
ls -lah ../../home/