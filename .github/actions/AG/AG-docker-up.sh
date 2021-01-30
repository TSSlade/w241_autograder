#!/bin/sh -l

echo "Docker container is up!"
echo "This is what we're working with:"
tree -L 2 .
echo "And here's the stuff in the parent volume:"
tree -L 2 "${HOME}"