#!/bin/bash

if [ -z ${URL+x} ]; then
  URL=https://s3.amazonaws.com/s3.redshift3d.com/public/benchmark/RedshiftBenchmarkScenes.tar.gz
fi

mkdir /render
cd /render
echo ===== Downloading $URL =====
wget -q $URL
FILEPATH=`ls`
FILEEXT=`echo $FILEPATH | cut -d'.' -f2-`

if [ $FILEEXT == "zip" ]; then
  unzip $FILEPATH
fi
if [ $FILEEXT == "tar.gz" ]; then
  tar -xf $FILEPATH
fi
rm $FILEPATH

cd /root
if [ -z ${FILE+x} ]; then
  FILE=`find /render -name *.rs|head -n1`
else
  FILE=/render/$FILE
fi
if [ -z ${BENCHMARK_MODE+x} ]; then
  echo ===== Benchmarking $FILE =====
  /usr/redshift/bin/redshiftBenchmark $FILE
else
  echo ===== Rendering $FILE =====
  /usr/redshift/bin/redshiftCmdLine $FILE
  exrtopng redshiftCmdLineOutput.exr result.png
fi
