# Plantilla TFG Markdown
Plantilla para el TFG en la Escuela de Ingeniería Informática de Valladolid (Universidad de Valladolid).

Basada en la plantilla realizada por Diego Fidalgo, con modificaciones para poder escribirla en Markdown
y compilarla a Latex, PDF o lo que surja con Pandoc.

## Instrucciones
Para iniciar un proyecto basado en esta plantilla, haz una copia del repositorio y edita el fichero `main.md`.

## Generación de PDF con Pandoc
Instala Pandoc y una distribución de PDF, o bien, si usas Docker y te sitúas en la raiz del proyecto:

```
# Build the Dockerfile
docker build -t pandoc .

# Or download it from hub.docker.com
docker run -v $PWD:/source --rm raikuro/pandoc:1.19.2.1

# (NOTE: Autobuild is available at raikuro/pandoc-autobuild)
```

Y aparecerá un fichero output.pdf con el resultado.

TODO
----

- [ ] Buscar una buena manera de setear las variables sin tocar la plantilla.
