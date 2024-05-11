
## Maximo y Minimo

<table>
<tr>
<td>

``` pascal
var 
    max: integer;
    nro: integer;
begin
    max:= -1;
    read(nro);
    while(nro <> 0) do begin
        //Actualizar max
        if (nro > max) then
            max:= nro

        read(nro)
    end;
end;
```
</td>

<td>

``` pascal
var 
    min: integer;
    nro: integer;
begin
    min:= 9999;
    read(nro);
    while(nro <> 0) do begin
        //Actualizar min
        if (nro < min) then
            min:= nro

        read(nro)
    end;
end;
```
</td>

</tr>
</table>


