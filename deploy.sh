# Deploy production

# Primero dar permiso a deploy.sh
#chmod +x deploy.sh 

# Ejecutar deploy.sj
#./deploy.sh 


#!/usr/bin/env sh/deply

# abort on errors
set -e

echo "iniciando ..."

# Verificamos que si existe directorio docs
  if [ -d docs ]
  then
    #Si existe directorio lo eliminamos
    rm -rf docs
    echo "directorio docs eliminado"
  fi

  #echo "Creamos carpeta docs"
  #mkdir docs

  echo "Construimos para producción"
  # Construimos para producción
  npm run build


  #echo "Copiamos contenido"
  #cp -rl dist docs 
  #cp -ap dist docs

  #echo "Eliminamos dist" 
  #rm -rf dist

   #Renombramos la carpeta dist por docs
   echo "Renombrando carpeta dist"
   mv dist docs

   # Agregamos todos los archivos modificados al repo
   git add .

   git commit -m "deploying"

   git push

   echo "deploy success"


cd -
