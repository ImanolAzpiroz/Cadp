Indice
==========
- [Declaracion](#declaracion)
- [Recorrido](#recorrido)
-
-

## Vectores
- Homogenea: todos los elementos son del mismo tipo.
- Estatica: El tamaño no cambia durante la ejecucion del programa.
- Indexada: Para acceder a un elemento de la estructura se debe hacer uso de una variable indice de tipo ordinal.
- Acceso Directo: Se accede directamente al elemento sin necesidad de pasar por los anteriores.

## Declaracion
``` pascal
type
    vector = array[1..cantElem] of tipoDato;
var
    v: vector;
```

## Recorrido
``` pascal
var 
    i: integer;
    v: vector; dimL :integer
begin
    dimL:= 10; //Cant elementos
    for i:= 1 to dimL do
        writeln(v[i]);
end;
```

## Buscar Elemento (Vector Desordenado)
``` pascal
var
    boolean: esta;
    i, dimL: integer;
    v: vector;
begin
    nroABuscar:= 6;
    esta := false;
    i:= 1;
    while(i <= dimL and not esta) do begin
        if(v[i] = nroABuscar) then
            esta:= true;
        i:= i + 1;
    end;
end;
```

## Agregar Elemento al Final
``` pascal
procedure AgregarAlFinal(var v: vector, var dimL: integer; nro: integer);
begin
    if(dimL < dimF)then begin
        dimL:= dimL + 1;
        v[dimL]:= nro;
    end;
end;

```

## Insertar Elemento


## Borrar Elemento

busqueda binaria

