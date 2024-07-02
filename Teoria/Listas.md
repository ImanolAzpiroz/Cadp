
<h1 align="center" >Listas</h1>

Indice
- [Declaracion](#declaracion)
- Agregar
    - [Adelante](#agregar-adelante)
    - [Atras](#agregar-atras)
    - [Ordenado](#insertar-ordenado)
- Recorrido
    - [Total](#recorrido-total)
    - [Parcial](#recorrido-parcial)
- [Borrar Elemento](#borrar-elemento)

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
    new(nue); nue^.dato:= t; nue^.sig:= nil;

    if(l = nil) then                // Nuevo nodo como 1ro si la lista esta vacia.
        l:= nue;

    else begin    
        act:= l; ant:= l;          // Busco la posicion (Depende la condición)
        while (act <> nil) and (act^.dato.nro < t.nro) do begin      
            ant:= act;
            act:= act^.sig;
        end;

        if (l = act) then          // Nuevo nodo como 1ro
            nue^.sig:= l;
            l:= nue
        else if(act <> nil) then   // Nuevo nodo como intermedio
            ant^.sig:= nue;
            nue^.sig:= act
        else
            ant^.sig:= nue;        // Nuevo nodo como final
            nue^.sig:= nil;
    end;
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


## Borrar Elemento sin repeticiones

``` pascal
procedure BorrarElemento(var l: lista; t: tipoDato);   // Lista desordenada sin repeticiones
var
    ant, act: lista;
begin
    act:= l;
    // Busco la pos
    while(act <> nil) and (act^.dato <> t) do begin
        ant:= act;
        act:= act^.sig;
    end;

    if(act <> nil) then                 // Si act = nil (lista vacia o no esta el elem)
        if (act = l) then
            l:= act^.sig                // Si es el primer elemento
        else
            ant^.sig:= act^.sig;

        dispose(act);                   // Libero la memoria
       
    end;
end;
```

## Borrar Elemento con repeticiones

``` pascal
procedure BorrarElementoRepe(var l: lista; t: tipoDato);   // Lista desordenada con repeticiones
var
    ant, act: lista;
begin
    act:= l;
    // Busco la pos
    while(act <> nil) do begin              // Recorro la lista completa
        if (act^.dato <> d) then    
            ant:= act;
            act:= act^.sig;
        else begin
            if (act = l) then               
                l:= l^.sig;
            else
                ant^.sig:= act^.sig;
            dispose(act);
            act:= ant;
    end;
end;
```