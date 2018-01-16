docker run -it --name=redshift --runtime=nvidia -e PARAMS="-gpu 0" sonm/redshift3d
docker cp redshift:/root/result.png .
docker rm redshift
