#! /bin/sh
echo "Generating configuration files for Netsoul_Pidgin, please wait..."
echo;

touch -f NEWS
cp -f LICENSE COPYING

echo "Running libtoolize, please ignore non-fatal messages..."
echo n | libtoolize --copy --force || exit;
echo;

aclocal || exit;
autoheader || exit;
automake --add-missing --copy
autoconf || exit;
automake || exit;

rm -f NEWS
rm -f COPYING

echo "Done."
