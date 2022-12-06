#Comienzo del script
clear
echo "Bienvenidx al script adivinidador, nos vamos a divertir..."
num_aleatorio=$(( $RANDOM % 50 + 1 ))

#Declaracion de variables auxiliares
numero=-1
cant_intentos=0

#Comienzo del juego
echo "Con mi gran inteligencia, he creado un numero entre 1 y 50."
while [ "$numero" -ne "$num_aleatorio" ];
do
	echo "Ingrese un numero para intentar! Luego presione enter..."
	read numero
	clear
	if [ "$numero" -gt "0" ] && [ "$numero" -le "50" ];
		then
		cant_intentos=$((cant_intentos+1))
		if [ "$numero" -eq "$num_aleatorio" ];
				then if [ "$cant_intentos" -le "5" ];
					then
					echo "Adivinaste, felicidades. Estas dentro del 0,001 más inteligente de la poblacion...Si, esta chequeadisimo"
			     	elif [ "$cant_intentos" -gt "5" ] && [ "$cant_intentos" -le "10" ];
					then 
					echo "Lo lograste, felicidades! Ahora puedes seguir con tu vida promedio"
			     	else 
			     		echo "Lo lograste despues de tan solo... $cant_intentos intentos... bueno siempre puede ser peor no?"
			fi
		else 
			if [ "$num_aleatorio" -gt "$numero" ];
				then 
				echo "Te quedaste un poco cortx... Intenta con un numero mas grande"
			else
				echo "Te pasaste... Intenta con un numero mas chico"
			fi
		fi
	else 
		echo "El numero ingresado debe estar entre 1 y 50"
	fi
done


