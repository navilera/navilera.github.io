YR=`date +%Y`
DEST=assets/images/${YR}/
echo Copy $1 to ${DEST} 
mkdir -p ${DEST}
if [ -f "$1" ]; then
    echo $1 existe
    HASH=`sha256sum $1 | awk '{print $1}'`
    echo HASH : ${HASH}
    EXTENSION=${1##*.}
    TARGET=${HASH}.${EXTENSION}
    echo cp $1 ${DEST}${TARGET}
    cp  -f $1 ${DEST}${TARGET}
    echo "![](/"${DEST}${TARGET}")"
else
    echo $1 does not exist
fi

