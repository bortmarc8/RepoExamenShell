#!/bin/bash

read -p "Dime el nombre: " nombre;

existe=$(awk -F ':' '{print $1}' /etc/passwd | grep -w $nombre);

if test -z "$existe"
then
echo "El usuario no existe en el sistema";
else
echo "El usuario $existe si existe";
fi