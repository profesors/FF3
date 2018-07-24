# Fundamentos de Física 3
Soluciones de los exámenes de Fundamentos de Física 3 de la UNED

## Convertir el archivo de LaTex a PDF

Para ello hay dos métodos:

1. El primero es más sencillo. Desde el terminal:

```
$ pdflatex FF3_2015_Resuelto.tex
```

y obtendrás un documento en formato PDF.

2. Yo por mi parte he creado un directorio llamado `aux` y empleo desde el terminal:

```
$ clear && pdflatex --output-directory=aux FF3_2015_Resuelto.tex
```

De esta manera todos los archivos intermedios que genera LaTex quedarán en el directorio
`aux` además del PDF.
