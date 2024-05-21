![image](https://github.com/ImanolAzpiroz/Cadp/assets/122705871/4e49dde7-b815-4b3b-a4c6-ef9794a2b561)

![image](https://github.com/ImanolAzpiroz/Cadp/assets/122705871/6b26a9d3-ba08-4028-a176-4b28f953f7f6)

## 1)
----------
``` pascal
program

type
    venta = record
        nroVenta: integer;
        cantProd: integer;
        tipoPago: char;  // E o T
    end;

    lista = ^nodo;
    nodo = record
        dato: venta;
        sig: lista;
    end;



procedure CargarLista(var l1: lista);
begin
    // Se dispone
end;


function DosPares(cantProd: integer): boolean;
var
    aux: boolean;
    cant: integer;
    dig: integer;
begin
    cant:= 0; aux:= false;
    while(cantProd <> 0) do begin
        dig:= cantProd mod 10;
        if(dig mod 2 = 0) then
            cant:= cant + 1;
        
        cantProd:= cantProd div 10;
    end;
    if(cant >= 2) then
        aux:= true;
    DosPares:= aux;
end;


procedure Insertar(var l: lista; v: venta);
var
    nue, ant, act: lista;
 begin
    new(nue);
    nue^.dato:= v;
    act:= l;
    ant:= l;
    while (act <> nil) and (act^.dato.tipoPago = 'T') do begin
        ant:= act;
        act:= act^.sig;
    end;
    if(ant = act) then
        l:= nue
    else
        ant^.sig:= nue;
    nue^.sig:= act; 
 end;

end;

procedure Recorrer (l1: lista; var l2: lista);
begin
    while(l1 <> nil) do begin
        if(DosPares(l1^.dato.cantProd)) then
            Insertar(l2, l1^.dato);
        l1:= l1^.sig;
    end;

end;

var
    l1, l2: lista;
begin
    l1:= nil; l2:= nil;
    CargarLista(l1); // Se dispone

    Recorrer(l1, l2);

end.
```

<table>
<tr>
<td>
A
</td>
<td>
B
</td>
</tr>
<tr>
<td>

``` pascal
program uno;
var
    d: array[1.100] of integer;
begin
    // Operaciones de carga y recorrido del vector 
end
```
</td>
<td>

``` pascal
program uno;
type
    datos = array[1.100] of integer;
var
    d: datos;
begin
    // Operaciones de carga y recorrido del vector 
end
```
</td>
</tr>
</table>

Los dos programas son validos y declaran el mismo tipo de vector. <br> Pero al declarar el tipo de dato en la seccion de type el codigo es mas claro, organizado y reutilizable.
