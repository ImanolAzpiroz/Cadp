<h1 align="center"> Resumen Final Cadp </h1>

---------------

Indice

- [Introduccion](#introduccion)
- [Datos](#concepto-de-dato)
- [Estructuras de control](#estructuras-de-control)
- [Modularizacion](#modularizacion)
- [Eficiencia](#correccion-y-eficiencia) 
    -   [Calculo Tiempo Ejecucion](#calculo-tiempo-de-ejecucion)
    -   [Calculo Memoria](#calculo-memoria)

- [Algoritmos](#algoritmos)
    - [Vectores]()
    - [Listas]()
- [Finales](#finales)





## Introduccion

<p> La informatica es la ciencia que estudia el analisis y resolución de problemas utilizando computadoras, se encarga de estudiar la administración de métodos, técnicas y procesos con el fin de almacenar, procesar y transmitir información y datos en formato digital.</p>



<h3>Resolucion de problemas </h3>

- Analisis
- Diseño
- Implementacion
- Verificacion

<h3>Computadora</h3>
<p>Máquina capaz de aceptar datos de entrada, ejecutar con ellos cálculos aritméticos y lógicos y dar información de salida (resultados), bajo control de un programa previamente almacenado en su memoria.  </p>

<h3>Concepto de Algoritmo</h3>
<p>Especificacion rigurosa de la secuencia de pasos a realizar sobre un autómata para alcanzar un resultado en un tiempo finito.</p>

- Especificacion rigurosa: debemos expresarlo en forma clara y univoca.
- Tiempo finito: El algoritmo empieza y termina.


<h3>Concepto de programa </h3>
Es un conjunto de instrucciones u órdenes ejecutables sobre una computadora, que permite cumplir con una funcion específica. Las instrucciones se encuentran en un lenguaje de programación concreto.



<h3>Paradigmas de programación</h3>

- Programacion Imperativa
- Programacion Orientada a Objetos
- Programacion Concurrente


## Concepto de dato ##
<p>Representacion de un objeto del mundo real. Los datos permiten modelizar aspectos del problema que se quiere resolver mediante un programa ejecutable en una computadora</p>
Hay 2 tipos:

- Constantes: Valor fijo, no cambia
- Variables: Puede cambiar durante la ejecucion del programa.


## Tipos de datos

<p>Clase de objetos ligados a un conjunto de operaciones para crearlos y manipularlos.<br>
Cada tipo de dato se caracteriza por presentar: </p>

- Rango de valores posibles.
- Conjunto de operaciones permitidas sobre el mismo.
- Representacion interna.

<table>

<tr>
<td>
Simple
</td>
<td>
Compuesto
</td>
</tr>

<tr>
<td>
    <p>Aquellos que toman un único valor, en un momento determinado, de todos los permitidos para ese tipo.</p>
</td>
<td>
    <p>Pueden tomar varios valores a la vez que guardan alguna relación lógica entre ellos, bajo un único nombre. </p>
</td>
</tr>

</table>

----------

<table>

<tr>
<td>
Definidos por el lenguaje
</td>
<td>
Definidos por el programador
</td>
</tr>

<tr>
<td>
    <p>Son provistos por el lenguaje y tanto la representación como sus operaciones y valores son reservadas al mismo.</p>
</td>
<td>

<p>Permiten definir nuevos tipos de datos a partir de los tipos simples. </p>
Ventajas: 

- Flexibilidad: En el caso de ser necesario modificar la forma en que se representa el dato, sólo se debe modificar una declaración en lugar de un conjunto de declaraciones de variables.   
- Documentacion: Se pueden usar como identificador de los tipos, nombres autoexplicativos, facilitando de esta manera el entendimiento y lectura del programa.
- Seguridad: Se reducen los errores por uso de operaciones inadecuadas del dato a manejar, y se pueden obtener programas más confiables..
</td>
</tr>

</table>


## Estructuras de Control
Todos los lenguajes de programaicon tienen un conjunto minimo de instrucciones que permiten especificar el control del algoritmo que se quiere implementar. <br>
Como mínimo deben contener: secuencia, decisión e iteración.

- Secuencia: Sucesion de operaciones, el orden de ejecucion coincide con el orden fisico de aparicion de instrucciones.
- Decision: El algoritmo debe tomar una decision en funcion de los datos del problema. (If-Else) 
- Seleccion: Permite realizar distintas acciones dependiendo del valor de una variables de tipo ordinal. (Case)
- Iteracion: Ejecuta un bloque de codigo N veces, depediendo de una condicion.
Existen:

    - Pre-condicionales(While): Evalua la accion, en caso de ser verdadera ejecuta las instrucciones, puede ejecutarse 0, 1, o mas veces. 
    - Post-condicionales. (Repeat-Until): Ejecuta las accione, luego evalua la condicion. Se ejecuta 1 o mas veces.

- Repeticion: Repite N veces un bloque de acciones, siendo N un numero fijo y conocido de antemano.





## Modularizacion
Dividir un problema en partes funcionalmente independientes que encapsulan operaciones y datos

- Legibilidad
- Facilidad de mantenimiento
- Reusabilidad
- Facilidad de crecimiento

### Alcance de Variables

![image](https://github.com/ImanolAzpiroz/Cadp/assets/122705871/ba967182-f05a-43ad-817b-e86be8c3e74b)






## Correccion y Eficiencia
- Correccion: el grado en el que la aplicacion satisface las especificaciones y consigue los objetivos encomendados.
- Eficiencia: Metrica de la calidad del algoritmo, asociada a una utilizacion optima de los recursos del ssistema de computo, principalmente la memoria utilizada y el tiempo de ejecucion.

Para que un algoritmo sea eficiente, primero de comprobarse que sea correcto


### Metodos de Correccion

- Testing 
    - Hay que diseñar un plan de pruebas, decidir que aspectos del programa deben ser testeados y encontrar datos prueba para cada uno de esos articulos.
    - Determinar que resultado se espera para cada uno de esos casos.
    - Tener en cuenta los casos limites.
    - Se realiza cuando el programa ya fue implementado, si tiene errores vuelve a la etapa de desarrollo.
- Debugging
    - Proceso de descubrir y reparar la causa del error.
    - Consiste en agregar al codigo sentencias de write, para monitorear como se va ejecutando el programa
    - Errores:
        - Errores Sintácticos: Se detectan en la compilacion.
        - Errores Lógicos: Generalmente se detectan en la ejecucion
        - Errores de Sistema: Son muy raros los casos en los que se producen. Ej. que pasa con el algoritmo si se corta la luz.
- Walkthrough:
    - Recorrer el programa frente a una audiencia.
    - Estas personas no tiene preconceptos y estan predispuestas a descubrir errores u omisiones.
    - A menudo, cuando no se puede detectar un error, el programador trata de probar que no existe.
- Verificacion: 
    - Verificar que se cumplan las post y pre condiciones del mismo.


### Calculo tiempo de ejecucion

<table align="center">
<tr>
<td>
If Else
</td>
<td>
For
</td>
<td>
While
</td>
<td>
Repeat-Until
</td>
</tr>

<tr>
<td>
C + Max Cuerpo
</td>
<td>
3(N) + 2 + N(Cuerpo)
</td>
<td>
C(N + 1) + N(Cuerpo)
</td>
<td>
C(N) + N(Cuerpo)
</td>
</tr>
</table>

Ejemplos




### Calculo Memoria




## Algoritmos

<details><summary>Listas</summary>

<p> Insertar Ordenado </p>

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

<p> Borrar Elemento sin repeticiones </p>

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

<p> Borrar Elemento con repeticiones</p>

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

</details>



## Finales

<details><summary>Final 1</summary>

![image](https://github.com/ImanolAzpiroz/Cadp/assets/122705871/ed588e32-0018-4525-8676-73e8e0c30c41)

1)
``` pascal

program Final_1;
type 
    producto = record
        codigo: integer;
        nombre: string;
        rubro: integer;
        precio: real;
    end;

    lista = ^nodo;
    nodo = record
        dato: producto;
        sig: lista;
    end;

    vectorRubros = array[1..20] of integer;

procedure Agregar(l: lista; p: producto);
var
    nue: lista;
begin
    new(nue);
    nue^.dato = p;
    nue^.sig = nil;
    l:= nue;
end;

procedure CargarLista2(l1: lista; var l2: lista; vr: vectorRubros)
begin
    while l1 <> nil do begin
        if (vr[l1^.dato.rubro] = 10) then
            Agregar(l2, l1^.dato);

        l1:= l1^.sig;
    end;
end;


var
    l1,l2: lista;
    vr: vectorRubros;
begin
    InicializarVector(vr);
    CargarLista(l1, vr);
    CargarLista2(l1, l2, vr);

end;

```

2)

    a) F, la tecnica de Debugging se utiliza para identificar la causa y corregir errores.
    b) F, para ciertos vectores no es necesario la utilizacion de la dimension logica, por ejemplo, un vector contador.
    c) F, las funciones devuelven un unico valor de tipo simple 
    d) F, es independiente el uso de variables globales al de la utilizacion de modulos. 

3) 

    a) Read(c)           ; F, No se puede hacer un read de un registro, se debe hacer campo por campo.
    b) new(c)            ; F, new se usa en tipos de datos puntero, c es un registro.
    c) read(cli)         ; F, no se puede leer o escribir una variable de tipo puntero.
    d) c:= nil           ; F, c es de tipo registro, y nil solo se puede asignar a variables de tipo puntero.
    e) cli:= nil         ; V, cli es de tipo puntero, se le puede asignar nil.
    f) dispose(cli)      ; V, solo se puede hacer dispose de variables de tipo puntero.
    g) read(cli^.codigo) ; F, se debe acceder primero al campo datos, luego a codigo.
    h) write(c.codigo)   ; V, el acceso al campo es correcto.
    

4) 


</details>



