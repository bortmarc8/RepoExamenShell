#!/bin/bash
read -p "Escribe una ciudad: " ciudad;
hombres=$(grep -w "$ciudad" instructores.txt | grep -w "Hombre" | wc -l)
mujeres=$(grep -w "$ciudad" instructores.txt | grep -w "Mujer" | wc -l)

if [ $hombres -gt 0 -o $mujeres -gt 0 ]; then
	echo "En $ciudad hay $hombres hombres y $mujeres mujeres";
else 
	echo "No existe ninguna mujer ni ningun hombre en esta ciudad";
fi 

