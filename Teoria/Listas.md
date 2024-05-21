
<h1 align="center" >Listas</h1>

## Declaracion
``` pascal
type 
    lista = ^nodo;
    nodo = record
        dato: tipoDato;
        sig: lista;
    end;
```

## Agregar Adelante
``` pascal
procedure AgregarAdelante(var l: lista; t: tipoDato)
var
    nue: lista;
begin
    new(nue);
    nue^.dato:= t;
    nue^.sig:= l;
    l:= nue;
end;
```

## Agregar Atras
```pascal
procedure agregarAtras(var l, ult : lista; t: tipoDato);
var
  nue: lista;
Begin
  New(nue);
  nue^.dato: t;
  nue^.sig:= nil;
  if (l <> nil)
    ult^.sig:= nue;
  else
    l:= nue;
  ult:= nue;
end;       
```

## Insertar Ordenado 
```pascal
procedure InsertarOrdenado(var L: lista; t: tipoDato);
var
    nue, act, ant: lista;
begin
    new(nue);
    nue^.dato:= t;
    act:= l;
    ant:= l;
    // Busco la posicion (Depende la condición)
    while(act <> nil) and (act^.dato.nro < t.nro) do begin
        ant:= act;
        act:= act^.sig;
    end;
    // Modifico los nodos
    if(ant = act) then
        l:= nue
    else
        ant^.sig:= nue;
    nue^.sig:= act; 
end;
```

## Recorrido Total
``` pascal
procedure Recorrer(l: lista);
begin
    while (l <> nil) do begin
    
        l:= l^.sig;
    end;
end;
```
## Recorrido Parcial
``` pascal
procedure Recorrer(l: lista);
begin
    // Recorrer mientras alguna condicion
    while (l <> nil) and (l^.dato.nro < 15) do begin
    
        l:= l^.sig;
    end;
end;
```

## Borrar Elemento
``` pascal
procedure BorrarElemento(var l: lista; t: tipoDato; var exitoo: boolean);
var
    ant, act: lista;
begin
    exito:= false;
    act:= l;
    // Busco la pos
    while(act <> nil) and (act^.dato <> t) do begin
        ant:= act;
        act:= act^.sig;
    end;

    if(act <> nil) then begin
        exito:= true;
        if (act = l) then
            l:= act^.sig
        else
            ant^.sig:= act^.sig;

        // Libero la memoria
        dispose(act);
    end;
end;
```