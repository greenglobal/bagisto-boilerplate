# The FROM instruction sets the Base Image for subsequent instructions.
# As such, a valid Dockerfile must have FROM as its first instruction.
FROM kun391/phpup:1.1

# The MAINTAINER instruction allows you to set the Author field of the generated images.
LABEL maintainer="Au Truong Ngoc <autk08@gmail.com>"

RUN apk add --update nodejs nodejs-npm
RUN node -v
RUN npm -v
RUN npm install -g yarn

COPY ssl/kewi.projects.greenglobal.vn /etc/nginx/sites-enabled/kewi.projects.greenglobal.vn
COPY ssl/certs/kewi.projects.greenglobal.vn.key /etc/ssl/private/kewi.projects.greenglobal.vn.key
COPY ssl/certs/START.projects.greenglobal.vn.crt /etc/ssl/certs/kewi.projects.greenglobal.vn.crt
COPY ssl/certs/dhparam.pem /etc/nginx/dhparam.pem
