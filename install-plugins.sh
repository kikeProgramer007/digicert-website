#!/bin/bash

# Verificar si WP-CLI está instalado
if ! command -v wp &> /dev/null; then
    echo "WP-CLI no está instalado. Por favor, instálalo antes de ejecutar este script."
    exit 1
fi

# Cambiar al directorio de instalación de WordPress(actualiza la ruta según tu instalación)
# cd /c/xampp/htdocs/wordpress-prueba || { echo "No se pudo cambiar al directorio de WordPress."; exit 1; }

cd /var/www/html/digicert-website || { echo "No se pudo cambiar al directorio de WordPress."; exit 1; }

# Lista de plugins a instalar y activar
plugins=(
    blocks-animation
    carousel-block
    cliengo
    custom-fonts
    duplicate-post
    elementor
    elementskit-lite
    kadence-blocks
    popup-builder
    smart-slider-3
    stackable-ultimate-gutenberg-blocks
    svg-support
    title-remover
    ultimate-addons-for-gutenberg
    use-any-font
    virtue-toolkit
)

# Instalar y activar plugins
for plugin in "${plugins[@]}"; do
    wp plugin install "$plugin" --activate
done

echo "Todos los plugins han sido instalados y activados."