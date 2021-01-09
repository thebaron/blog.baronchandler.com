#! /bin/sh

TOP_PATH=$(dirname $(dirname $0))
WEB_PATH=/mnt/content_nyc3_01/web/blog.baronchandler.com

rm ${WEB_PATH}
ln -s $TOP_PATH $WEB_PATH

docker restart blog.baronchandler.com
