# Zadatak 2

## Opis
Napravljena je bash skripta  `premjesti.sh` koja premješta datoteke iz direktorija `old_dir` u direktorij `new_dir`.
Nakon svakog premještanja ispisuje poruku: Datoteka prebačena te čeka tri sekunde pomoću naredbe `sleep`.

## Pokretanje skripte
zadani prioritet: ./premjesti.sh
manji prioritet: nice -n 10 ./premjesti.sh
veći prioritet: nice -n -10 ./premjesti.sh

## Napomena
Pokušaj pokretanja skripte s NI = -10 rezultirao je porukom:
    nice: cannot set niceness: Permission denied (za postavljanje negativnih vrijednosti potrebne su administratorske ovlasti)
Zadatak je izrađen i testiran u Ubuntu Linux (WSL) okruženju.
U direktoriju se nalaze:
- `premjesti.sh` – Bash skripta koja premješta datoteke iz direktorija `old_dir` u direktorij `new_dir`.
- `Screenshot_terminal.png` – prikaz izvođenja skripte i pokretanja s različitim NI prioritetima u Ubuntu terminalu.
- `htop_default.png` – prikaz procesa u alatu htop pri zadanom NI prioritetu (NI = 0).
- `htop_nice10.png` – prikaz procesa u alatu htop pri NI prioritetu 10.
