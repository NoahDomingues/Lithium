#!/system/bin/sh
PRELOAD_DEST=/storage/emulated/0/
#echo "aaaa" > ${PRELOADMEDIA_FLAG}
#preload video
PRELOADMEDIA_DEST=${PRELOAD_DEST}/custom_media
PRELOADMEDIA_FLAG=${PRELOADMEDIA_DEST}/.mediafile
PRELOADMEDIA_SRC=/system/media/custom_media
 
if [ ! -d ${PRELOADMEDIA_DEST} ]
then
    mkdir -p ${PRELOADMEDIA_DEST}
fi
 
if [ ! -f ${PRELOADMEDIA_FLAG} ]
then
    files=$(ls ${PRELOADMEDIA_SRC}/)
    for i in ${files};do
        cat  ${PRELOADMEDIA_SRC}/${i} > ${PRELOADMEDIA_DEST}/${i}
    done
    echo "aaaa" > ${PRELOADMEDIA_FLAG}
fi
