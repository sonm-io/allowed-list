# Tensorflow on GPU with Keras

This image has built in keras.
It also performs git clone a repositore, specified in REPO environment

You need nvidia-docker2 installed to run it

docker --runtime=nvidia -d -e REPO=<git repo with Notebooks> sonm/tensorflow
