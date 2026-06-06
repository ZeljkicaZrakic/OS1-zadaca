# Zadatak 4

## Oktalne reprezentacije dozvola

- `rwxr-xr-x` = `755`
  vlasnik može čitati, pisati i zvršavati, grupa može čitati i izvršavati, i ostali korisnici čitati i izvršavati.

- `rw-w--w--` = `644`
  vlasnik može čitati i pisati, grupa i ostali korisnici mogu samo čitati.

- `rwx-----` = `700`
  vlasnik može čitati, pisati i izvršavati, dok grupa i ostali korisnici nemaju nikakve dozvole.

- `rw-rw-r` =`664`
  vlasnik i grupa mogu čitati i pisati, a ostali korisnici mogu samo čitati.

- `rwxrwxrwx` = `777`
  vlasnik, grupa i ostali korisnici mogu čitati, pisati i izvršavati.

- `r--r--r--` = `444`
  vlasnik, grupa i ostali korisnici mogu samo čitati.

- `rw-------` = `600`
  vlasnik može čitati i pisati, dok grupa i ostali korisnici nemaju nikakve dozvole.

## Objašnjenje

Vrijednosti dozvola računaju se prema pravilima:
- `r = 4`
- `w = 2`
- `x = 1`

Primjer:
`rwxr-xr-x`
-vlasnik: rwx = 4 + 2 + 1 = 7
-grupa: r-x = 4 + 1 = 5
-ostali: r-x = 4 + 1 = 5

Zato je oktalna vrijednost `755`.