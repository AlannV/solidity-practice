# solidity-practice

Las lineas de codigo SIEMPRE deben de finalizar con un ;

Los comentarios los podemos definir de la misma manera que lo hacemos en js, con dos slash

// ejemplo de un comentario

en la primer linea de codigo debemos de aclarar el tipo de licencia que querramos (spdx licence)

en la segunda linea de codigo, especificamos la version de compilador que queremos usar podemos hacerlo
de manera explicita de la siguiente manera, utilizando la palabra reservada "pragma" seguido de la
palabra reservada "solidity"

pragma solidity 0.8.8

podemos tambien decir que queremos un rango de versiones a partir de una version minima

pragma solidity ^0.8.1 <- esto hara que podamos compilar nuestro codigo con cualquier compilador
en el rango de 0.8.1 hasta 0.8.9

tambien podemos establecer rangos de versiones de la siguiente manera

pragma solidity >=0.8.1 <0.9.0

para definir un contrato, lo hacemos como si estuviesemos definiendo una funcion en js de la siguiente
manera utilizando la palabra reservada "contract"

contract SimpleStorage {

// tu codigo aca

}

**tipos de datos primitivos basicos**

en solidity, tenemos distintos tipos de valores
los principales, son:

**_boolean_**: booleano de toda la vida, true or false

**_uint_**: unsigned interger, que es un numero positivo

**_int_**: puede ser un numero positivo o negativo

**_address_**: una address como puede ser la de una billetera como metamask

estos tipos de datos nos sirven en solidity, para definir variables de la siguiente manera

//definiendo una variable booleana

pragma solidity 0.8.8

contract SimpleStorage {
bool hasFavoriteNumber;
}

// definiendo una variable uint

pragma solidity 0.8.8

contract SimpleStorage {
uint favoriteNumber = 256;
}

en el caso de las variables uint||int, podemos especificar la cantidad de bits que puede
guardar esa variable

pragma solidity 0.8.8

contract SimpleStorage {
uint8 favoriteNumber = 256;
}

de esta manera, definimos que favoriteNumber puede ocupar un maximo de 8 bits, si no especificamos
que cantidad de bits debe almacenar solidity automaticamente le asignará 256 bits como si
escribiesemos uint256, pero siempre es recomendable ser lo mas explicitos posibles, aun así
necesitemos un uint256, es mejor escribir uint256 que uint
cabe aclarar que el minimo de bits que podemos definir es uint8 y el maximo es uint256

tambien tenemos como en muchos otros lenguajes de programación, el tipo string, que almacena una
cadena de texto

pragma solidity 0.8.8

contract SimpleStorage {
string favoriteNumberInText = "256";
}

**ejemplos de todas las anteriores**

pragma solidity 0.8.8;

contract SimpleStorage {
bool hasFavoriteNumber = true;
uint8 favoriteNumber = 256;
uint favoriteNumber = -88;
string favoriteNumberInText = "256";
address myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}

si nosotros no definimos un valor de inicializacion de una variable, esta por defecto tendra el valor
null, pero convertido al tipo de dato que estamos definiendo, por ejemplo, en bool, el valor predeterminado
sera false, en uint sera 0, en string sera "", en address sera 0x0000000000000000000000000000000000000000,
etc

**ejemplo de una funcion**

las funciones en solidity, se definen de la siguiente manera

pragma solidity 0.8.8;

  
contract SimpleStorage {

  uint256 public favoriteNumber;

  function store(uint256 _favoriteNumber) public {
    favoriteNumber = _favoriteNumber;
  }
}

veamos paso a paso lo que esta pasando en este codigo, primero definimos una funcion llamada store
que recibe un parametro llamado _favoriteNumber, que es de tipo uint256, luego, dentro de la funcion
definimos una variable llamada favoriteNumber, que es de tipo public, esto quiere decir que esta
variable puede ser accedida desde afuera del contrato, luego, dentro de la funcion, asignamos el valor 
de la variable _favoriteNumber a la variable favoriteNumber, que es la que esta definida como public

cada vez que pasemos un parametro a una funcion, debemos aclarar que tipo de dato es, y para que
solidity pueda diferenciar entre los distintos parametros, debemos de anteponerle un guion bajo
antes del nombre del parametro, esto es una convencion de la comunidad de solidity.

vemos dos veces la palabra reservada "public" dentro del codigo, esto se hace para que se pueda 
acceder a estos datos o funciones desde fuera del contrato, basicamente, que se pueda interactuar
con esos valores y/o funciones desde afuera del contrato
