FROM vncserver/lubuntu:latest
#RUN curl -o novnc.tar.gz https://github.com/novnc/noVNC/archive/refs/tags/v1.3.0.tar.gz && tar -xvf novnc.tar.gz
#RUN curl -o novnc.zip https://github.com/novnc/noVNC/archive/refs/tags/v1.3.0.zip && unzip
RUN git clone https://github.com/novnc/noVNC.git
#WORKDIR /noVNC/utils

COPY novnc.sh /opt/novnc.sh
#COPY novnc.sh /etc/my_init.d/bootstrap.sh
RUN chmod +x /opt/novnc.sh
#RUN chmod +x /etc/my_init.d/bootstrap.sh

#disabling healthcheck
HEALTHCHECK CMD exit 0

LABEL com.centurylinklabs.watchtower.enable false

EXPOSE 80
#CMD ["./novnc_proxy", "--vnc", "localhost:5901", "--listen", "0.0.0.0:80"]
CMD ["/opt/novnc.sh"]
