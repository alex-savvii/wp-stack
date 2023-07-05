# WP Stack Convenience Scripts

Scripts voor luie systeembeheerders.

## Framework

Om alles makkelijk in handbereik te hebben, staat alles onder opt-tools/wp-stack

### Entry point

De basis is het `savvii.sh` shell script. Alle scripts worden aangeroepen door `savvii.sh`, en omdat
we allemaal luie systeembeheerders zijn en niet elke keer `/opt/savvii/tools/current/wp-stack/savvii.sh commando`
in willen tikken adviseer ik om in je eigen `bin` directory een script te maken dat dit aanroept,
of simpeler, een symlink naar savvii.sh te maken. Het script kopieren gaat niet werken, want het locatie van het hele
framework is gebaseerd op de locatie van dit shellscript. Voor de experts: `dirname $(readlink -f $0)`

Bijvoorbeeld:
```sh
$ ln -s /opt/savvii/tools/current/wp-stack/savvii.sh ~/bin/s
```

### Commando's

Achter het entrypoint komt een commando en zijn parameters.

Een commando is een woord dat een script aanduidt in de tree achter `wp-stack`. Daar mogen `/`-es in zitten om directories dieper te gaan


Als dit zoals hierboven naar `s` afgekort is, bijvoorbeeld:

```sh
$ s f2b query
```
Dit roept `/opt/savvii/tools/current/wp-stack/bin/f2b.sh` aan met `q` als argument

Of

```sh
$ s wp/yaml new
```
Dit roept `/opt/savvii/tools/current/wp-stack/bin/wp/yaml.sh` aan met `new` als argument

