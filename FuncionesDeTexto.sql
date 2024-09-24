/*-Crea una tabla llamada "estudiantes" con cinco columnas: "id" de tipo INT como clave primaria, "nombre" de tipo VARCHAR(50), 
"apellido" de tipo VARCHAR(50), "edad" de tipo INT y "promedio" de tipo FLOAT.*/


create table estudiantes (
id int primary key,
nombre varchar(50),
apellido varchar(50),
edad int,
promedio float
);

/*Luego, inserta cinco filas en la tabla "estudiantes" con los siguientes datos:

ID: 1, Nombre: Juan, Apellido: Pérez, Edad: 22, Promedio: 85.5

ID: 2, Nombre: María, Apellido: Gómez, Edad: 21, Promedio: 90.0

ID: 3, Nombre: Luis, Apellido: Rodríguez, Edad: 20, Promedio: 88.5

ID: 4, Nombre: Ana, Apellido: Martínez, Edad: 23, Promedio: 92.0

ID: 5, Nombre: Carlos, Apellido: López, Edad: 22, Promedio: 86.5*/

insert into estudiantes (id, nombre, apellido, edad, promedio) values
( 1, 'Juan', 'Perez', 22, 85.5),
( 2, 'Maria', 'Gomez', 21, 90.0),
( 3, 'Luis', 'Rodriguez', 20, 88.5),
( 4, 'Ana', 'Martinez', 23, 92.0),
( 5, 'Carlos', 'Lopez', 22, 86.5);

/*Encuentra la longitud del nombre del estudiante con el nombre "Luis" y apellido "Rodríguez".*/

select length(nombre) as longitud_nombre from estudiantes
where nombre = 'Luis' and apellido = 'Rodriguez';

/*Concatena el nombre y el apellido del estudiante con el nombre "María" y apellido "Gómez" con un espacio en el medio. */

select concat(nombre, ' ' , apellido) as nombres_completos from estudiantes
where nombre = 'Maria' and apellido = 'Gomez';

/*Encuentra la posición de la primera 'e' en el apellido del estudiante con el nombre "Juan" y apellido "Pérez".*/

select locate('e', apellido) as posicion_de_e from estudiantes
where nombre ='juan' and apellido ='perez';

/*Inserta la cadena ' García' en la posición 3 del nombre del estudiante con el nombre "Ana" y apellido "Martínez".*/

select insert(nombre, 3,0, 'garcia') as nombre_combinado from estudiantes
where nombre = 'Ana' and apellido = 'Martinez';

/*Convierte el nombre del estudiante con el nombre "Luis" y apellido "Rodríguez" a minúsculas. (LOWER)*/

select lower(nombre) as nombre_en_minusculas from estudiantes
where nombre = 'Luis' and apellido = 'Rodriguez';

/*Convierte el apellido del estudiante con el nombre "Juan" y apellido "Pérez" a mayúsculas. (UPPER)*/

select upper(apellido) as apellido_en_mayusculas from estudiantes
where nombre = 'juan' and apellido = 'Perez'; 

/*Obtiene los primeros 4 caracteres del apellido del estudiante con el nombre "María" y apellido "Gómez". (LEFT)*/

select left(apellido, 4) as apellido_inicial from estudiantes
where nombre ='Maria' and apellido = 'Gomez';

/*Obtiene los últimos 3 caracteres del apellido del estudiante con el nombre "Ana" y apellido "Martínez". (RIGHT)*/

select right( apellido, 3 ) as apellido_final from estudiantes
where nombre = 'Ana' and apellido = 'Martinez';

/*Encuentra la posición de la primera 'o' en el nombre del estudiante con el nombre "Carlos" y apellido "López". (LOCATE)*/

select locate( 'o', nombre) as seleccion_o_nombre from estudiantes
where nombre = 'Carlos' and apellido = 'Lopez';

/*Encuentra la posición de la primera aparición de la letra 'a' en el nombre de la estudiante con el nombre "María" y apellido "Gómez".
*/

select locate ('a', nombre) as seleccion_a_nombre from estudiantes
where nombre ='Maria' and apellido ='Gomez';

/*Reemplaza 'a' con 'X' en el nombre del estudiante con el nombre "Ana" y apellido "Martínez". */

select replace(nombre, 'a', 'x') as reemplazo_nombre from estudiantes
where nombre = 'Ana' and apellido = 'Martinez';

/*Encuentra la subcadena de 3 caracteres de longitud de la columna 'nombre' del estudiante 
con el nombre "María" y apellido "Gómez", comenzando en la posición 2.*/

select substr(nombre, 2, 3) as subcadena_nombres from estudiantes
where nombre ='Maria' and apellido = 'Gomez';

/*Combina los nombres de todos los estudiantes en una única cadena separada por guiones.*/

select group_concat(nombre separator '-') as nombres_combinados from estudiantes;

/*Combina los nombres y apellidos de todos los estudiantes en una única cadena separada por un guion vertical (|).*/

select group_concat(concat(nombre, ' ', apellido) separator '|') as nombre_y_apellidos_combinados from estudiantes;

/*Elimina los espacios en blanco iniciales del texto "    … usé muchos espacios    ".*/

select ltrim('    … usé muchos espacios    '  ) as texto_sin_espacios_iniciales;

/*Elimina los espacios en blanco finales del texto "    … usé muchos espacios    ".*/

select rtrim('    … usé muchos espacios    ');

/*Cita el resultado de los dos ejercicios anteriores utilizando la función QUOTE./**/

select quote(ltrim('    … usé muchos espacios    ')) as cita_sin_espacios_iniciales,
quote(rtrim('    … usé muchos espacios    ')) as cita_sin_espacios_finales,
quote(trim('    … usé muchos espacios    ')) as cita_sin_espacios;

/*Repite el nombre y apellido del estudiante con el nombre "Juan" y apellido "Pérez" tres veces. */


select repeat(concat(nombre, ' ', apellido),3) as nombre_y_apellido_repetido from estudiantes
where nombre = 'juan' and apellido ='Perez';


/*Invierte el nombre del estudiante con el nombre "Ana" y apellido "Martínez".*/

select reverse(nombre) as nombre_invertido from estudiantes
where nombre = 'Ana' and apellido = 'Martinez';

/*Devuelve una cadena que contenga 8 caracteres de espacio usando la función SPACE y muéstrala con la función QUOTE.*/

select quote(space(8)) as cadena_con_espacios;

/*Extrae una subcadena que contiene el nombre del estudiante con el nombre "María" y apellido "Gómez" 
antes de la segunda a utilizando SUBSTRING_INDEX.*/

select substring_index(nombre, 'a',2) as subcadena_antes_de_segunda_a from estudiantes

where nombre = 'maria' and apellido ='gomez';

/*Combina las edades de todos los estudiantes en una única cadena separada por comas y orden descendente.*/

select group_concat(edad order by edad desc separator ',') as edades_descendientes from estudiantes;

/*Elimina las ‘a’ del nombre' del estudiante con el nombre "Ana" y apellido "Martínez" usando la función REPLACE. */

select replace(nombre, 'a', '' ) as nombre_sin_a from estudiantes
where nombre = 'Ana' and apellido ='Martinez';

/*Rellena a la derecha el promedio del estudiante con el nombre "Luis" y apellido "Rodríguez"
 con asteriscos hasta una longitud total de 10 caracteres. */

select lpad(promedio, 10, '*') as promedio_asteriscos from estudiantes
where nombre ='Luis' and apellido = 'Rodriguez';

/*Obtén el promedio del estudiante con nombre 'Carlos' y apellido 'López', formateado con dos decimales y utilizando la
 configuración regional 'es_AR'.*/
 
 select format(promedio, 2, 'es_AR') as promedio_formato from estudiantes
 where nombre = 'Carlos' and apellido = 'Lopez';
 
 
 
 
 
 