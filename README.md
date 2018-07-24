# Fundamentos de Física 3
Soluciones de los exámenes de Fundamentos de Física 3 de la UNED

## Convertir el archivo de LaTex a PDF

Para ello hay dos métodos:

1. El primero es más sencillo. Desde el terminal:

```
$ pdflatex FF3_2015_Resuelto.tex
```

y obtendrás un documento en formato PDF.

2. El segundo método es el que yo utilizo. He creado
en el directorio de trabajo local de este repositorio un directorio
llamado `aux` donde vuelco los archivos temporales y el PDF final que
genera pdflatex, así pues desde el terminal:

```
$ clear && pdflatex --output-directory=aux FF3_2015_Resuelto.tex
```

Recuerda que en el directorio `aux` quedará el PDF final para distibuir.
