# Zadatak 5

## Opis
Napravljena je bash skripta `apply.sh` koja prima dva argumenta:
1. znakovnu reprezentaciju dozvola
2. putanju do datoteke

Skripta pretvara znakonvnu reprezentaciju dozvola u oktalni zapis te ga primjenjenuje na zadanu datoteku pomoću naredbe `chmod`. 
Ako nisu proslijeđena točno dva argumenta, skripta ispisuje poruku o upozorenju i prekidu izvođenja.

# Primjer korištenja
./apply.sh rwxr-xr-- test_z5.txt
Rezulatat: Dozvole rwxr-xr-- pretvorene su u 754 i primijenjene su na test_z5.txt

# Napomena
Testiranje je rađeno u WSL okruženju unutar Windows-mounted direktorija `/mnt/c/...`, gdje `chmod` ne prikazuje uvijek promjenu dozvola na isti način kao na Linux filesystemu. Zbog toga je skripta dodatno testirana u Linux home direktoriju korisnika (`/home/administratorzeljkica`), gdje je uspješno primijenila dozvole `rwxr-xr--` (754) na testnu datoteku.
U direktoriju se nalaze:
- `apply.sh` – Bash skripta koja prima znakovnu reprezentaciju dozvola i putanju do datoteke, pretvara dozvole u oktalni zapis te ih primjenjuje pomoću naredbe `chmod`.
- `test.txt` – testna datoteka korištena za provjeru rada skripte.
- `Screenshot-zadatak5-nano.png` – prikaz sadržaja skripte `apply.sh` u uređivaču nano.
- `Screenshot_zadatak5.png` – prikaz testiranja skripte i uspješne primjene dozvola na testnu datoteku.