
<h1 align="center">Calculo de memoria y Tiempo de ejecucion</h1>


<h2>Tabla de valores</h2>
<table>
    <tr> <td> Tipo de Dato </td> <td> Memoria </td>  </tr>
    <tr> <td> Char </td> <td> 1 Byte </td>  </tr>
    <tr> <td> Boolean </td> <td> 1 Byte </td>  </tr>
    <tr> <td> Integer </td> <td> 4 Byte </td>  </tr>
    <tr> <td> Real </td> <td> 8 Byte </td>  </tr>
    <tr> <td> String </td> <td> Long + 1 Byte o 256 Bytes</td>  </tr>
    <tr> <td> Registro </td> <td> Suma de Campos </td>  </tr>
    <tr> <td> Arreglos </td> <td> DimF * tipoELem </td>  </tr>
    
    <tr> <td> Puntero </td> <td> 4 Byte </td>  </tr>
</table>


<h2>Calcular Memoria Dinamica y Estatica. </h2>

1
==============
``` pascal
program Ejercicio5;
const 
  dimF = 100;
type
  rango = 1..dimF;
  vector = array [rango] of ^real;
var
  v:vector;
  dimL,i:integer;
 begin
  dimL:=50;
  for i:=1 to dimL do
  begin
    new(v[i]);
    read(v[i]^);
  end;
  for i:=1 to 25 do 
    v[i]:=nil;
  for i:=26 to 50 do
    dispose(v[i]);
end.
```
Memoria Estatica = 412 Bytes
```
v: 100 * 4 = 400
dimL: 6
i: 6
```

Memoria Dinamica = 200 Bytes
```
v[i] = 8
1er for: 50 * 8 = 400
2d0 for: - 25 * 8 = 200

```



2
==========

``` pascal
Const
    DF = 10;
Type
    puntero = ^real;
    puntero2 = ^char;
    persona = record
        nombre:string[20];
        dni:integer;
    end;
    puntPer = ^persona;
Var
    p:puntero; q:puntero2;
    per: puntPer;

    perso:persona;
Begin
End.
```


<table>
<tr><td>Memoria Estatica</td> <td>Memoria Dinamica</td></tr>
<tr><td>

``` 
df = 4
p: 4
q: 4
per: 4
perso:
    nombre: 20 + 1
    dni: 4

total = 41 bytes
```
</td>
<td> 

``` 
Total = 0 Bytes
```
</td>
</tr>
</table>


