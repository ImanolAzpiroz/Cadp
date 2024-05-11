program final2022;



type
    producto = record
        codigo: integer;
        nombre: string;
        rubro: 1..20;
        precio: real;
    end;

    lista = ^nodo;
    nodo = record
        dato: producto;
        sig: lista;
    end;

    vectorRubros = array[1..20] of integer;

procedure CargarLista (var l: lista; var vr: vectorRubros);
begin
        

end;


procedure CargarLista2(l1: lista; var l2: lista, vr: vectorRubros);
begin
    while(l1 <> nil) do begin
        if(vr[l1^.dato.rubro] = 10) then 
            Agregar(l2, l1^.dato);
        
        l1:= l1^.sig;
    end;
end;

var
    l1, l2: lista;
begin
    CargarLista(l1); // Se dispone
    CargarLista2(l1, l2);
end;