FILE=services.cn.google.xml
FILE_PATH1=/system/etc/permissions/
FILE_PATH2=/system/product/etc/permissions/

if [ -e $FILE_PATH1$FILE ]; then
  mkdir -p $MODPATH$FILE_PATH1
  cp -af $FILE_PATH1$FILE $MODPATH$FILE_PATH1$FILE
  sed -i '/cn.google.services/d' $MODPATH$FILE_PATH1$FILE
elif [ -e $FILE_PATH2$FILE ]; then
  mkdir -p $MODPATH$FILE_PATH2
  cp -af $FILE_PATH2$FILE $MODPATH$FILE_PATH2$FILE
  sed -i '/cn.google.services/d' $MODPATH$FILE_PATH2$FILE
else
  abort "File not found, exiting......"
fi
