> For English speakers: This repository contains [Enki](https://github.com/Amgelo563/enki-bot) tags for a spanish community. It's very likely you don't need this repository, but it could serve as an example if you ever want to setup Enki with a GitHub repository.

# 👋 Introducción

¡Bienvenido al repositorio de los tags de [Enki](https://github.com/Amgelo563/enki-bot) para el servidor de Ajneb97!

En la carpeta `content` puedes revisar todos los tags disponibles, así como contribuir con nuevos o editar los existentes.
El bot está configurado para que cada cierto tiempo se actualice con el nuevo estado de este repositorio.

## 📚 Estructura y Convenciones

Para mantener todo organizado, este repositorio organiza los tags en carpetas. Revisa la documentación de [Enki](https://github.com/Amgelo563/enki-bot) para entender por completo esta parte.

* En la carpeta `content` se encuentra lo que el bot lee como tal, es decir los atlases y sus tags/resources.

### Creando un Tag Category

> En este ejemplo se reemplazaría `<category>` por el nombre de una categoría.

* Dentro de `content/tags` se encuentran los tag categories, primero su configuración (`content/tags/<category>.conf`) y sus tags en una carpeta del mismo nombre (`content/tags/<category>`).
* Para que Enki detecte que sus tags están dentro de esa carpeta, usamos la siguiente configuración:
`content/tags/<category>.conf`
```json5
{
  tags: [
    "tags/<category>/**.conf"
  ]
}
```
Luego incluimos esta configuración en el `tag-atlas.conf`:
```json5
[
  {
    include "tags/<category>.conf"
  }
]
```
* Por convención, el nombre del archivo (y carpeta) de los tag categories es el nombre de su comando.

### Creando un Resource

> En este ejemplo se reemplazaría `<resource>` por el nombre de un resource, y `<category>` por el nombre de una categoría.

* Dentro de `content/resources` se encuentran los resources, primero su configuración (`content/resources/<resource>.conf`) y sus contenidos en una carpeta del mismo nombre (`content/resources/<resource>`).
* Dentro de la carpeta del resource, se encuentran sus tags "directos" y sus tag categories. Para esto podemos aplicar la siguiente configuración:
`content/resources/<resource>.conf`
```json5
{
  tags: ["resources/<resource>/*.conf"],
  
  categories: [
    {
      tags: ["resources/<resource>/<category>/**/*.conf"],
    }
  ]
}
```
Luego la incluimos en el `resource-atlas.conf`:
```json5
[
  {
    include "resources/<resource>.conf"
  }
]
```
* Se siguen las mismas convenciones que los tag categories, y se suele incluir una carpeta `__plantillas__` para plantillas aplicadas a través de varios tags del resource. Por ejemplo, en `content/resources/<resource>/__plantillas__`.

### Creando un Tag

* Por convención, el nombre del archivo debe ser el primer `keyword`.
* Los mensajes deben ser lo más cortos posibles, ya que podrían llenar el chat. En caso un mensaje se está haciendo muy largo, considera usar un botón de tipo `message` o mandar un link a documentación en un botón `url`.
* El contenido a primera vista de un tag debería ser suficiente para solucionar un problema, y los botones sean información extra o útil, pero no necesaria.


## ✨ Cómo contribuir

¡Gracias por desear contribuir! Con tu colaboración ayudas a hacer la información más accesible y rápida, tanto como para personas que requieren ayuda como los que la dan.

1. Para iniciar, revisa la documentación de [Enki](https://github.com/Amgelo563/enki-bot) para que sepas cómo funcionan los tag, tag categories y resources. También tiene una versión en español.
2. Revisa la sección de [Estructura y Convenciones](#-estructura-y-convenciones) para ver cómo están organizados los archivos y otras recomendaciones generales.
**Si sabes sobre GitHub:**
Crea un fork de este repositorio, aplica tus cambios y crea un Pull Request que podrá ser revisado y aprobado por el staff.
**Si no sabes sobre GitHub:**
Crea tu archivo o modifica el que quieras y mándaselo por privado a un staff, explicando todo el tema. Nosotros sabremos cómo aplicarlo.
