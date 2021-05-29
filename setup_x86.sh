SETUPFLAGS="--noconfirm --overwrite '*'"
LIBXML2=libxml2.pkg.tar.zst
BROTLI=brotli.pkg.tar.zst
FONTCONFIG=fontconfig.pkg.tar.zst
FREETYPE=freetype.pkg.tar.zst
curl "https://github.com/lifegpc/static-mingw-w64-libxml2/releases/download/2.9.12-1/mingw-w64-i686-libxml2-2.9.12-1-any.pkg.tar.zst" -o $LIBXML2 -L || exit 1
pacman -U $LIBXML2 $SETUPFLAGS || exit 1
curl "https://github.com/lifegpc/static-mingw-w64-brotli/releases/download/1.0.9-2/mingw-w64-i686-brotli-1.0.9-2-any.pkg.tar.zst" -o $BROTLI -L || exit 1
pacman -U $BROTLI $SETUPFLAGS || exit 1
curl "https://github.com/lifegpc/static-mingw-w64-fontconfig/releases/download/2.13.93-3/mingw-w64-i686-fontconfig-2.13.93-3-any.pkg.tar.zst" -o $FONTCONFIG -L || exit 1
pacman -U $FONTCONFIG $SETUPFLAGS || exit 1
curl "https://github.com/lifegpc/static-mingw-w64-freetype/releases/download/2.10.4-3/mingw-w64-i686-freetype-2.10.4-3-any.pkg.tar.zst" -o $FREETYPE -L || exit 1
pacman -U $FREETYPE $SETUPFLAGS || exit 1
