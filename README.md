## Beschrijving
De opdrachten zijn een verzameling van wijzigingen aan de fastapi-passworder project.

## Opdracht Installatiescript
Dit kan je testen door ze uit voeren met:

```sh
./installationscript.sh
```

Open je browser naar keuze en typ in je url balk het volgende:
```sh
http://0.0.0.0:8000/encrypt/version
```

Het is gelukt als je de volgende resultaat hebt:
```
{
  "version": "0.1-19-g2848f37"
}
```

## Opdracht logger
De log locatie is configurabel via settings.yaml.

Je kan dit testen door de volgende url te plakken in je browsers url balk :
```
http://0.0.0.0:8000/encrypt/version
```

Navigeer naar submap passworder en bekijk de inhoud van debug.log


