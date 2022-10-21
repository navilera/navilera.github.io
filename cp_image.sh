YR=`date +%Y`
DEST=static/images/${YR}/
LINK=images/${YR}/
echo Copy $1 to ${DEST} 
mkdir -p ${DEST}
if [ -f "$1" ]; then
    echo $1 existe
    HASH=`shasum $1 | awk '{print $1}'`
    echo HASH : ${HASH}
    EXTENSION=${1##*.}
    TARGET=${HASH}.${EXTENSION}
    echo cp $1 ${DEST}${TARGET}
    cp  -f $1 ${DEST}${TARGET}
    echo "![](/"${LINK}${TARGET}")"
else
    echo $1 does not exist
fi

