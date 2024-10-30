# SCRIPT PARA QUE GITHUB PILLE TODO EN SU SITIO

# Renderiza el proyecto Quarto
quarto::quarto_render()

# Define el directorio de salida y el directorio de destino (raíz)
output_dir <- "_site"
main_dir <- "."

# Mueve toda la carpeta `_site` a la raíz
file.rename(output_dir, main_dir)
