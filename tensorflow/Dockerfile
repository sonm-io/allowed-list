FROM tensorflow/tensorflow:latest-gpu

RUN apt-get update && apt install -y git
RUN pip install keras
COPY start.sh /
ENV REPO https://github.com/nerush/aind2-rnn.git
CMD ["/start.sh"]
