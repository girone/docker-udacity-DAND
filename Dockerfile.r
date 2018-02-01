#FROM debian:stretch
FROM rocker/r-base
RUN wget "https://download1.rstudio.org/rstudio-xenial-1.0.153-amd64.deb" && dpkg -i rstudio-xenial-1.0.153-amd64.deb
VOLUME ["/udacity/"]
EXPOSE 8888
WORKDIR ["/udacity/lessons"]
#COPY ./entrypoint.sh /
#ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
