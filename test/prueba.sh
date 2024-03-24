#!/usr/bin/env bash

# echo "<h1> Part 1. Segundo parcial computacion en la nube 2017-1 Estudiante: Juan Pablo Aguirre </h1>" > /var/www/html/index.html


FILE="/var/www/html/index.html"

/bin/cat <<EOM >$FILE

<h1> Part 1. Segundo parcial computacion en la nube 2017-1 Estudiante: Juan Pablo Aguirre Sin echo ni cp </h1>
EOM
