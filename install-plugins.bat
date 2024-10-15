@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

REM Verificar si WP-CLI está instalado
WHERE wp >NUL 2>NUL
IF %ERRORLEVEL% NEQ 0 (
    ECHO WP-CLI no está instalado. Por favor, instálalo antes de ejecutar este script.
    PAUSE
    EXIT /B 1
)

REM Cambiar al directorio de WordPress
CD "C:\xampp\htdocs\wordpress-prueba"
IF %ERRORLEVEL% NEQ 0 (
    ECHO No se pudo cambiar al directorio de WordPress.
    PAUSE
    EXIT /B 1
)

ECHO Instalando y activando plugins...

REM Lista de plugins a instalar y activar

SET plugins=blocks-animation carousel-block cliengo custom-fonts duplicate-post elementor elementskit-lite kadence-blocks popup-builder smart-slider-3 stackable-ultimate-gutenberg-blocks svg-support title-remover ultimate-addons-for-gutenberg use-any-font virtue-toolkit

FOR %%p IN (%plugins%) DO (
    wp plugin install %%p --activate
)

ECHO Finalizado.
PAUSE