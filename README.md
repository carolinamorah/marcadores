# Prueba - Marcadores

● Descripción:

Mientras navegamos por internet encontramos artículos y sitios web que nos parecen interesantes, pero que no tenemos tiempo de revisar en ese instante y tendemos a usar nuestros marcadores para dejarlos como referencia.

En nuestro browser sólo podemos agruparlos por tipo o alguna otra categorización que hayamos definido previamente.

Necesitamos un sistema que nos permita extender la funcionalidad de los marcadores de tal manera que podamos agruparlos por categoría y que además podamos definir subtipos, por ejemplo video, artículo, paper u otro tipo. Las categorías pueden tener anidadas otras categorías y no existe límite de sub categorías. En cambio los tipos, sólo están a un nivel y no pueden existir subtipos.

Una de las particularidades de nuestro sistema de bookmarks, es que podemos compartir listas, esto es, que dada cierta categoría o subcategoría podemos hacer que todas las subcategorías sean públicas o privadas.

● Suponer:

* El nivel de visibilidad (público o privado) de una lista de subcategorías está definido por la categoría que se ha consultado. Por ejemplo, si se consulta "Animales" y es privada, cada sub categoría será privada. Si se consulta "Mamíferos" (sub categoría de Animales) y ésta es pública, desde ese nivel hacia abajo es pública. Es decir, para efectos de mostrar data, sólo se debe considerar el nivel de visibilidad de la categoría que se está consultando.

* El sistema es colaborativo, no existe sistema de usuario, por lo que cualquier persona puede agregar o quitar elementos de una lista/categoría.

● Instrucciones:

* Como desarrollador de software, te han encargado hacer lo siguiente:

1. Entregar un diagrama de relaciones, de tal manera que explique cómo interactúa cada uno de los modelos.
2. Entregar un CRUD para la administración de Categorías, Marcador y Tipo.
3. El formulario para agregar Marcadores debe ser enviado a través de una petición AJAX y antes de ser enviado debe pedir confirmación.
4. Crear un endpoint que retorne un JSON con los datos de una categoría (debe incluir subcategorías y marcadores). El esquema del JSON de salida debe quedar a su
criterio.
5. Inicialmente, nuestro sistema debe contener al menos 20 registros predefinidos.
6. Mostrar un gráfico de torta que muestre cómo están distribuidos los tipos de marcadores.

* ...
# prueba_marcadores
