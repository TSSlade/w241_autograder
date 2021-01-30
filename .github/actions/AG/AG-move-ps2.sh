#!/bin/sh -l

echo "+++++ Running AG-MovePs2.sh +++++"
echo "What are we working with?"
ls -lah

cp -r ./ps2 /github/workspace/ps2

echo "What do we see now?"
ls -lah /github/workspace

echo "+++++ Leaving AG-MovePs2.sh +++++"