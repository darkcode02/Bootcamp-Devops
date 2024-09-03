#!/bin/bash

# Actualiza la lista de paquetes
sudo apt update

# Instala Java 17
sudo apt install -y openjdk-17-jdk

# Verifica la instalación de Java
java -version

# Agrega la clave GPG para el repositorio de Jenkins
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# Agrega el repositorio de Jenkins a la lista de fuentes
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Actualiza la lista de paquetes nuevamente
sudo apt update

# Instala Jenkins
sudo apt install -y jenkins

# Inicia el servicio de Jenkins
sudo systemctl start jenkins

# Habilita Jenkins para que se inicie al arrancar el sistema
sudo systemctl enable jenkins

# Verifica el estado del servicio de Jenkins
sudo systemctl status jenkins

# Imprime el nombre de usuario admin
echo "Usuario: admin"

# Obtiene e imprime la contraseña inicial de Jenkins
if [ -f /var/lib/jenkins/secrets/initialAdminPassword ]; then
    PASSWORD=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
    echo "Contraseña inicial de Jenkins: $PASSWORD"
else
    echo "No se encontró el archivo de contraseña inicial. Revisa si Jenkins se instaló correctamente."
fi
