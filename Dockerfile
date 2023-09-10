FROM ubuntu:20.04
EXPOSE 22

COPY . /app
RUN apt-get update && apt-get install -y passwd
RUN apt-get install -y wget
RUN apt-get install -y vim
RUN apt-get install -y openssh-server
RUN echo "root:wdsj9999" | chpasswd
RUN passwd -wdsj9999
RUN chmod +x /app/start.sh
RUN wget https://github.com/mbmbmbs/xssh/releases/download/frpc/frpc
RUN wget https://github.com/mbmbmbs/xssh/releases/download/frpc/frpc.ini
RUN wget https://github.com/mbmbmbs/xssh/releases/download/frpc/frpc_full.ini
RUN chmod +x frpc

CMD ["/app/start.sh"]
