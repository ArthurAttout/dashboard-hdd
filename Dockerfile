FROM alpine

RUN apk --no-cache add websocketd nginx
ADD websocket-runner.sh .
ADD nginx.conf /etc/nginx/nginx.conf
#CMD nginx

#ENTRYPOINT ["/wrapper_script.sh"]
ENTRYPOINT nginx && websocketd --port=8080 /websocket-runner.sh	

