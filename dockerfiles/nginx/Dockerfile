FROM nginx
WORKDIR /home/n9e
COPY nginx.conf /etc/nginx/nginx.conf
RUN rm -frv /etc/nginx/conf.d/default.conf
COPY pub pub
