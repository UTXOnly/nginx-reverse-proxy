FROM nginx:alpine
RUN apk update && apk add certbot certbot-nginx
COPY ./default /etc/nginx/sites-available/default_holder
ARG NOSTR_DOMAIN
ARG EMAIL
#RUN certbot run -n --nginx --agree-tos -d ${NOSTR_DOMAIN}  -m  ${EMAIL}  --redirect

