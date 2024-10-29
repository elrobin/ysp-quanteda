# SCRIPT PARA QUE GITHUB PILLE TODO EN SU SITIO
# Renderiza el proyecto Quarto
quarto::quarto_render()

# Define los directorios
output_dir <- "_site"
main_dir <- "."

# Mueve todos los archivos y carpetas de `_site` a la raíz del repositorio
file.copy(list.files(output_dir, full.names = TRUE, recursive = TRUE), 
          main_dir, 
          recursive = TRUE, 
          overwrite = TRUE)

# Limpia la carpeta `_site`
unlink(output_dir, recursive = TRUE)
