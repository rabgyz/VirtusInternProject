FROM nginx
LABEL maintainer="rabgyz"
RUN apt-get update -y
RUN apt-get install git -y
RUN git clone https://github.com/rabgyz/VirtusInternProject.git
COPY /VirtusInternProject/index.html /usr/share/nginx/html/index.html
