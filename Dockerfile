FROM devisty/xssh:v2
EXPOSE 80

COPY . /app
RUN chmod +x /app/start.sh
RUN apt-get update && apt-get install -y passwd
RUN apt-get install -y vim
RUN echo "root:wdsj9999" | chpasswd
RUN wget https://github.com/mbmbmbs/xssh/releases/download/frpc/frpc
RUN wget https://github.com/mbmbmbs/xssh/releases/download/frpc/frpc.ini
RUN wget https://github.com/mbmbmbs/xssh/releases/download/frpc/frpc_full.ini
RUN chmod +x frpc

CMD ["/app/start.sh"]
