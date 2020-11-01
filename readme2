Instalar dependencias

Lo primero es instalar todas las dependencias necesarias para que PHPBrew funcione correctamente:

# apt-get install build-essential libssl-dev libxml2-dev pkg-config libssl-dev libsslcommon2-dev libbz2-dev libcurl4-openssl-dev libmysqlclient-dev libgdbm-dev libjpeg62 libjpeg62-dev libpng12-0 libpng12-dev libxml2 libxml2-dev libmcrypt4 libmcrypt-dev libmhash2 libmhash-dev libmm-dev libmm14 libtidy-dev libtidy-0.99-0 libxslt1-dev libxslt1.1 libfreetype6 libfreetype6-dev libicu-dev libreadline-dev lcov libzip-dev

Creamos los enlaces siguientes:

# cd /usr/local/include
# ln -s /usr/include/x86_64-linux-gnu/curl curl
# cd /usr/include
# ln -s x86_64-linux-gnu/curl
# apt-get install libcurl4-gnutls-dev libzip-dev

Instalar y configurar PHPBrew

Para instalar PHPBrew en ambas versiones de Ubuntu se tiene que hacer de la siguiente forma:

# curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
# chmod +x phpbrew
# mv phpbrew /usr/bin/phpbrew
# mkdir -p /usr/local/php

Luego editaremos ~/.bashrc y añadiremos lo siguiente al final de todo:

# nano ~/.bashrc

phpbrew init --root=/usr/local/php
export PHPBREW_ROOT=/usr/local/php
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

Podemos ver que versiones de PHP podemos instalar con estos comandos:

# phpbrew update
# phpbrew update --old

Compilar PHP en sus diferentes versiones

No estás obligado a compilar todas las versiones de PHP, puedes compilar las que vayas a utilizar.

-Para PHP 5.3 ejecutar:

# phpbrew install 5.3 +default +iconv +exif +ftp +mysql +gd +intl +zlib +cgi +dba +wddx

-Para PHP 5.4 ejecutar:

# phpbrew install 5.4 +default +iconv +exif +ftp +mysql +gd +intl +zlib +cgi +dba +wddx

-Para PHP 5.5 ejecutar:

# phpbrew install 5.5 +default +iconv +exif +ftp +mysql +gd +intl +zlib +cgi +dba +wddx

-Para PHP 5.6 ejecutar:

# phpbrew install 5.6 +default +iconv +exif +ftp +mysql +gd +intl +zlib +cgi +dba +wddx

-Para PHP 7.0 ejecutar:

# phpbrew install 7.0 +default +iconv +exif +ftp +mysql +gd +intl +zlib +cgi +dba +wddx

-Para PHP 7.1 ejecutar:

# phpbrew install 7.1 +default +iconv +exif +ftp +mysql +gd +intl +zlib +cgi +dba +wddx

-Para PHP 7.2 ejecutar:

# phpbrew install 7.2 +default +iconv +exif +ftp +mysql +gd +intl +zlib +cgi +dba +wddx

-Para PHP 7.3 ejecutar:

# phpbrew install 7.3 +default +iconv +exif +ftp +mysql +gd +intl +zlib +cgi +dba +wddx

Instalar extensiones adicionales

Para las versiones superiores a 7.x de PHP la extensión de OpenSSL por ejemplo no viene instalada por defecto. Es por eso que tendremos que instalarla manualmente (así como cualquier otra extensión que necesitemos). Para instalar una extensión con PHPBrew se deben de realizar los siguientes pasos:

Visualizamos las versiones que tenemos:

# phpbrew list

Seleccionamos la versión de PHP que queremos instalar la extensión:

# phpbrew use php-5.6.xx

Ahora instalamos la extensión necesaria, en este caso y de modo de ejemplo, instalaremos OpenSSL:

# phpbrew ext install openssl

Crear enlaces simbólicos

Crearemos los enlaces de las versiones de PHP que hayamos compilado para que podamos ejecutar las diferentes versiones de PHP desde las plantillas de VestaCP:

# ln -s /usr/local/php/php/php-X.X.XX /usr/local/php/phpXX

ATENCIÓN: Si se actualiza la versión de PHP es posible que el enlace cambie en los dos últimos números de la versión es por eso que estos enlaces se tienen que hacer manualmente, aún así, os dejamos los enlaces que se tienen que crear cuando se hizo este post.

-Para PHP 5.3 ejecutar:

# ln -s /usr/local/php/php/php-5.3.29 /usr/local/php/php53

-Para PHP 5.4 ejecutar:

# ln -s /usr/local/php/php/php-5.4.45 /usr/local/php/php54

-Para PHP 5.5 ejecutar:

# ln -s /usr/local/php/php/php-5.5.38 /usr/local/php/php55

-Para PHP 5.6 ejecutar:

# ln -s /usr/local/php/php/php-5.6.31 /usr/local/php/php56

-Para PHP 7.0 ejecutar:

# ln -s /usr/local/php/php/php-7.0.14 /usr/local/php/php70

-Para PHP 7.1 ejecutar:

# ln -s /usr/local/php/php/php-7.1.6 /usr/local/php/php71

-Para PHP 7.2 ejecutar:

# ln -s /usr/local/php/php/php-7.2.10 /usr/local/php/php72

-Para PHP 7.3 ejecutar:

# ln -s /usr/local/php/php/php-7.2.10 /usr/local/php/php73

Finalmente activamos los módulos de Apache necesarios:

# a2enmod actions cgi
# service apache2 restart

Creando Plantillas para VestaCP

Como en el paso anterior solo ejecutaremos los comandos para las versiones de PHP que hayamos compilado. Si has instalado todas las versiones, puedes ejecutar el siguiente código que ejecuta un script en bash que crea todas las templates automáticamente si no, ejecuta las líneas de las versiones que hayas instalado:

# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/instalar_plantillas.sh

Le damos permisos y lo ejecutamos:

# chmod u+r instalar_plantillas.sh
# ./instalar_plantillas.sh

Si has instalado alguna versión de PHP en concreto, ejecuta los comandos para esa versión:

-Para PHP 5.3 ejecutar:

# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php53.sh -O /usr/local/vesta/data/templates/web/apache2/php53.sh
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.tpl -O /usr/local/vesta/data/templates/web/apache2/php53.tpl
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.stpl -O /usr/local/vesta/data/templates/web/apache2/php53.stpl

-Para PHP 5.4 ejecutar:

# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php54.sh -O /usr/local/vesta/data/templates/web/apache2/php54.sh
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.tpl -O /usr/local/vesta/data/templates/web/apache2/php54.tpl
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.stpl -O /usr/local/vesta/data/templates/web/apache2/php54.stpl

-Para PHP 5.5 ejecutar:

# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php55.sh -O /usr/local/vesta/data/templates/web/apache2/php55.sh
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.tpl -O /usr/local/vesta/data/templates/web/apache2/php55.tpl
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.stpl -O /usr/local/vesta/data/templates/web/apache2/php55.stpl

-Para PHP 5.6 ejecutar:

# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php56.sh -O /usr/local/vesta/data/templates/web/apache2/php56.sh
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.tpl -O /usr/local/vesta/data/templates/web/apache2/php56.tpl
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.stpl -O /usr/local/vesta/data/templates/web/apache2/php56.stpl

-Para PHP 7.0 ejecutar:

# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php70.sh -O /usr/local/vesta/data/templates/web/apache2/php70.sh
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.tpl -O /usr/local/vesta/data/templates/web/apache2/php70.tpl
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.stpl -O /usr/local/vesta/data/templates/web/apache2/php70.stpl

-Para PHP 7.1 ejecutar:

# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php71.sh -O /usr/local/vesta/data/templates/web/apache2/php71.sh
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.tpl -O /usr/local/vesta/data/templates/web/apache2/php71.tpl
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.stpl -O /usr/local/vesta/data/templates/web/apache2/php71.stpl

-Para PHP 7.2 ejecutar:

# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php72.sh -O /usr/local/vesta/data/templates/web/apache2/php72.sh
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.tpl -O /usr/local/vesta/data/templates/web/apache2/php72.tpl
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.stpl -O /usr/local/vesta/data/templates/web/apache2/php72.stpl

-Para PHP 7.3 ejecutar:

# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php73.sh -O /usr/local/vesta/data/templates/web/apache2/php73.sh
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.tpl -O /usr/local/vesta/data/templates/web/apache2/php73.tpl
# wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.stpl -O /usr/local/vesta/data/templates/web/apache2/php73.stpl

Ahora tenemos que actualizar los permisos a las plantillas:

# chmod 755 /usr/local/vesta/data/templates/web/apache2/*
