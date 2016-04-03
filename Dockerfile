FROM ubuntu:trusty
RUN apt-get install software-properties-common -y 
RUN add-apt-repository ppa:mc3man/trusty-media -y 
RUN apt-get update 
RUN apt-get install ffmpeg wget -y
RUN wget http://clips.vorwaerts-gmbh.de/VfE_html5.mp4 -O test.mp4
ENTRYPOINT ["tail", "-f", "/dev/null"]
