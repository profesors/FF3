# Fundamentos de Física 3
Soluciones de los exámenes de Fundamentos de Física 3 de la UNED

## Convertir el archivo de LaTex a PDF de manera automática

Simplemente ejecuta desde el terminal:

```
$ make
```

Así se podrán procesar los archivos gnuplot que contienen los gráficos y se generará
el PDF final. Yo suelo ejecutarlo dos veces porque LaTex necesita muchas veces
dos compilaciones para crear la tabla de contenido y los enlaces internos.

## Convertir el archivos LaTex a PDF manualmente

1. Procesar gráficos de gnuplot:

```
$ gnuplot *.gnuplot
```

2. Para procesar el documento LaTex principal he creado
en el directorio de trabajo local de este repositorio un directorio
llamado `output` donde vuelco los archivos temporales

```
$ md output
```

aquí se volcarán todos los ficheros temporales de LaTex
y también el PDF final que genera pdflatex, así pues desde el terminal:

```
$ pdflatex --output-directory=aux FF3_2015_Resuelto.tex
```

*Recuerda que en el directorio `aux` quedará el PDF final para distibuir*
