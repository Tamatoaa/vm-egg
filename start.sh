folder=./dist
if [ -d "$folder" ]; then
    ./dist/proot -S . /bin/bash
else 
   ./install.sh
fi 
