# Plantilla TFG Markdown
Plantilla para el TFG en la Escuela de Ingeniería Informática de Valladolid (Universidad de Valladolid).

Basada en la plantilla realizada por Diego Fidalgo, con modificaciones para poder escribirla en Markdown
y compilarla a Latex, PDF o lo que surja con Pandoc.

## Instrucciones
Para iniciar un proyecto basado en esta plantilla, haz una copia del repositorio y edita el fichero `main.md`.

## Generación de PDF con Pandoc
Instala Pandoc y una distribución de PDF, o bien, si usas Docker y te sitúas en la raiz del proyecto:

```
docker build -t pandoc-es .
docker run -v $PWD:/source pandoc-es
```

Y aparecerá un fichero output.pdf con el resultado.

TODO
----

- [ ] Buscar una buena manera de setear las variables sin tocar la plantilla.