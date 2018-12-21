#!/bin/bash

v="53:54:55:56:70:71:72:73"
split=":"

numVer=$(grep -o "$split" <<< "$v" | wc -l)
numVer=$((v + 1))

for i in `seq 1 $numVer`;
do
	versionPHP=`echo $v | cut -d"$split" -f$i`

	echo "Descargando ficheros para la versión $versionPHP de PHP..."
	wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php$versionPHP.sh -O /usr/local/vesta/data/templates/web/apache2/php$versionPHP.sh
	wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.tpl -O /usr/local/vesta/data/templates/web/apache2/php$versionPHP.tpl
	wget https://gitlab.com/clouding.io-tech.support/vestacp-multiphp/raw/master/php.stpl -O /usr/local/vesta/data/templates/web/apache2/php$versionPHP.stpl
	echo "OK."

done

# By Clouding.io
