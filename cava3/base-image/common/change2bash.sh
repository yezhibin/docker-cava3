#!/bin/sh

rm -rf /bin/sh
ln -s bash /bin/sh
rm -rf /usr/bin/sh
ln -s bash /usr/bin/sh

echo "change sh to bash ok."
