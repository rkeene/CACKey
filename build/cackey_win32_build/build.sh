#! /bin/bash

make distclean

./configure --with-pcsc-headers=/home/u4423rsk/devel/pcsc_cac/cackey/build/cackey_win32_build/include --with-pcsc-libs="-L/home/u4423rsk/devel/pcsc_cac/cackey/build/cackey_win32_build/lib -lwinscard" --host=i586-mingw32msvc  CPPFLAGS="-I/home/u4423rsk/devel/pcsc_cac/cackey/build/cackey_win32_build/include" || exit 1

make || exit 1

exit 0
