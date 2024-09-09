contar_lwc() {
    local archivo=$1
    if [ -f "$archivo" ]; then
        local lineas=$(wc -l < "$archivo")
        local palabras=$(wc -w < "$archivo")
        local caracteres=$(wc -m < "$archivo")

        echo "El archivo $archivo tiene:"
        echo "$lineas líneas"
        echo "$palabras palabras"
        echo "$caracteres caracteres"
    else
        echo "El archivo $archivo no existe."
    fi
}

# Llamada a la función
contar_lwc "archivo.txt"
