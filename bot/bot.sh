#Mensaje buenos dias
echo "Buenos días $USER!"

#Menu opciones
echo "¿Con que puedo ayudarte?"
echo "1. Necesito saber la hora"
echo "2. Me gustaria ver el clima de hoy para Bahia Blanca"
echo "3. Quiero salir"
echo "Ingrese una opción y presione enter..."


#Eleccion opcion
read opcion
clear

#Programa
case $opcion in
	"1"|"1.")
		#Determino si es AM o PM - Hay metodos que nos permiten hacer esto directamente desde "date", pero dependen de
		#la configuración del sistema, y no me pareció correcto modificarla desde un script. Para asegurarme que se muestre
		#siempre tal cual lo quiero, decidi usar un if para determinar si es AM o PM
		hora=`date +%H`
		if [ $hora -lt "12" ]; 
			then
			formato="A.M."
		else 
			formato="P.M."
		fi
		echo "====================="
		echo "La hora es "$(date +"%I:%M %p") "$formato"
		echo "====================="
	;;
	
	"2"|"2.")
		curl https://wttr.in/Bahia-Blanca
	;;
	
	"3"|"3.")
		echo "Hasta luego $USER, espero volver a verte pronto!"
		exit
	;;
	
	*) 
		echo "Todavia no tengo disponible esa opción :'("
		echo "Intentá con opción 1 u opción 2"
	;;
esac

echo "Espero haber ayudado :) mucha suerte en tu día! Adiós"
		
		
