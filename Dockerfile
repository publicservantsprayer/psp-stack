# build from the official Nginx image
FROM nginx

# install essential Linux packages
#RUN apt-get update -qq && apt-get -y install apache2-utils

RUN mkdir /app

# establish where Nginx should look for files
#ENV APP_PATH /app

# Set the working directory inside the image
WORKDIR /app

# copy over static assets
COPY ./psp/public public

COPY ./photos public/photos

#RUN touch public/test.txt
#COPY psp/app/assets public/assets

# copy our Nginx config template
COPY nginx.conf /etc/nginx/conf.d/default.conf
