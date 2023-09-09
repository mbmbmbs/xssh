FROM devisty/xssh:v2
EXPOSE 80

COPY . /app
RUN chmod +x /app/start.sh
RUN chmod +x frpc
CMD ["/app/start.sh"]
