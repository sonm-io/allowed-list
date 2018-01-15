docker run -it --name=redshift --runtime=nvidia sonm/redshift3d
docker cp redshift:/root/result.png .
docker rm redshift
