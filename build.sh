cd libbluray || exit 1
make || exit 1
make install || exit 1
cd ../bluray || exit 1
7z a -mx9 -y ../bluray.7z *
