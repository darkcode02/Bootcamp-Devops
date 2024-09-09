1. **Ejecutar el script con -x para trazar la ejecución**
   El `-x` permite ver cada comando antes de ejecutarlo y el resultado. Esto es útil para rastrear el flujo del script.

   ```bash
   bash -x mi_script.sh

O puedes habilitar el trazo dentro del script usando set -x y deshabilitarlo con set +x:

#!/bin/bash
set -x
# Código que deseas trazar
set +x

Habilitar la verificación de errores con -e Usar -e asegura que el script se detenga si ocurre algún error.
bash -e mi_script.sh
O dentro del script:
set -e

Mostrar advertencias para variables no definidas con -u El -u muestra un error si intentas usar una variable no definida, lo que te ayudará a detectar variables no inicializadas.
bash -u mi_script.sh
O dentro del script:
set -u

Combinar opciones para mayor control (-eux) Puedes combinar varias opciones de depuración. Este comando muestra todos los pasos, errores y advertencias de variables no definidas.
bash -eux mi_script.sh
O en el script:
set -eux

Imprimir el estado de retorno de los comandos con -v Este comando imprime las líneas tal como son leídas, útil para ver cómo el shell interpreta el script.
bash -v mi_script.sh
O dentro del script:
set -v

Depurar un script con trap trap permite ejecutar comandos cuando ocurre un evento específico, como un error o la salida del script. Es útil para rastrear errores específicos.
trap 'echo "Error en la línea $LINENO"' ERR
Esto muestra un mensaje si el script falla en cualquier línea.
Mostrar el estado de salida de cada comando Puedes agregar echo $? después de cada comando o usar la siguiente estructura para ver si un comando ha fallado:
comando_cualquiera
if [ $? -ne 0 ]; then
    echo "Error al ejecutar comando"
fi