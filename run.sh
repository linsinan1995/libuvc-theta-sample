cd gst 
make OUTPATH=../libs/
cd ..

g++ -Llibs/ -Ilibs/ -Wall -o test main.cc -llauncher
export LD_LIBRARY_PATH=libs:$LD_LIBRARY_PATH
./test