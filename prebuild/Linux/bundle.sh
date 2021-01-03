set -ex

copies=$(lddtree.sh -l build/Release/canvas.node | sed -r -e '/^\/lib/d' -e '/canvas.node$/d');

echo $copies

for so in $copies; do
  cp $so build/Release
done;
