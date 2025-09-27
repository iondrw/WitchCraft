
# WitchCraft

La aplicación corresponde a una aplicación cross - platform que ofrece un acercamiento a la clarividencia a corto plazo a traves de la presentación de información diaria.

## Authors

- [@iondrw](https://github.com/iondrw)


## Características

- Como tarotista quiero ser capaz de saber en que fase lunar estamos diariamente y que rituales son recomendables para cada fase.
- Como tarotista quiero revisar el significado de cada carta de forma detallada y anotar observaciones personales para cada una.
- Como tarotista quiero poder tener acceso a diferentes tarots.
- Como tarotista quiero hacer tiradas propias y acceder a diferentes tiradas con diferentes significados.
- Como tarotista quiero guardar tiradas y cartas favoritas.
- Como tarotista quiero guardar las tiradas en fomato imágen y poder compartirlas. 

## Video de YouTube

https://youtu.be/JVOjZFgYJS0

## Diagrama de Pantallas
```mermaid
flowchart TD
    A[HomePage] --> B[Leer tarot]
    B --> B1[Guardados]
    A --> C[Fase lunar]
    C --> C1[Rituales]
    C --> C2[Contras]
    C --> C3[Recomendaciones]
    A --> D[favoritos]
    A --> E[Aprender]
    E --> E1[Baraja]
    E1 --> E1a[Carta]
    E --> E2[Simbología]

