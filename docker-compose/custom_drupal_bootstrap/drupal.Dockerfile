FROM drupal:8.6

RUN apt-get update && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

# rm -rf /var/lib/apt/lists/* -> needed to uninstall chache made by apt-get install

WORKDIR /var/www/html/themes

RUN git clone --branch 8.x-3.x --single-branch --depth 1 https://git.drupal.org/project/bootstrap.git \
  && chown -R www-data:www-data bootstrap

# chown -R www-data:www-data bootstrap -> all commands from dockerfile made under root user
# and this clone - will download files with root rights. But apache expects files owned by
# www user, so we need to change rights for folder to usr:group of www user, so he can 
# have access to them

WORKDIR /var/www/html
