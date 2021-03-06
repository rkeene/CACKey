#! /bin/sh

rm -f aclocal.m4

rm -f libcackey_wrap.c
./build/make-libcackey_wrap > libcackey_wrap.c

${MAKE:-make} -C aclocal
autoconf; autoheader

rm -rf autom4te.cache/

for basefile in install-sh config.sub config.guess; do
	for path in /usr/share/automake-*; do
		file="${path}/${basefile}"
		if [ -f "${file}" ]; then
			cp "${file}" .
			chmod 755 "./${basefile}"

			break
		fi
	done
done
