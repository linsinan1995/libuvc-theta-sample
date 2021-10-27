set -e
path=lib

have_a_good_day() {
  printf "${INFO_COLOR} [$(date +'%Y-%m-%dT%H:%M:%S%z')]: $1 ${END_COLOR}\n" >&2
}

pushd gst 
make OUTPATH=../$path
make clean
popd

have_a_good_day "please run"
have_a_good_day "export LD_LIBRARY_PATH=$PWD/$path:\$LD_LIBRARY_PATH"
