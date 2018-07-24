# FF3
Soluciones de los exámenes de Fndamentos de Física 3 de la UNED.

## Convertir el archivo de LaTex `.tex` en `.pdf`

Para convertir de LaTex a PDF de manera sencilla:

```
pdflatex FF3_2015_Resuelto.tex
```

y obtendrás un documento en formato PDF

Yo por mi parte he creado un directorio llamado `aux` y empleo desde la línea de comando:

```
clear && pdflatex --output-directory=aux FF3_2015_Resuelto.tex
```
