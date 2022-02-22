FROM vncserver/lubuntu:latest
#RUN curl -o novnc.tar.gz https://github.com/novnc/noVNC/archive/refs/tags/v1.3.0.tar.gz && tar -xvf novnc.tar.gz
#RUN curl -o novnc.zip https://github.com/novnc/noVNC/archive/refs/tags/v1.3.0.zip && unzip
RUN git clone https://github.com/novnc/noVNC.git
#WORKDIR /noVNC/utils

COPY novnc.sh /etc/my_init.d/novnc.sh
RUN chmod +x /etc/my_init.d/novnc.sh

#disabling healthcheck
HEALTHCHECK CMD exit 0
EXPOSE 80
#CMD ["./novnc_proxy", "--vnc", "localhost:5901", "--listen", "0.0.0.0:80"]
