cd libbluray || exit 1
make || exit 1
make install || exit 1
cd ../bluray-x86 || exit 1
7z a -mx9 -y ../bluray-x86.7z *
