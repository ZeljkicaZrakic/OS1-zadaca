# Zadatak 1

## Python skripta

Skripta hello.py ispisuje poruku "Hello World!", čeka 200 sekundi te nakon toga ispisuje poruku "Goodbye World!".

## Pokretanje:
Bash - python3 hello.py &

## Podaci o procesu u htop-u
PID (1195) – jedinstveni identifikator procesa.
USER (administratorzeljkica) – korisnik koji je pokrenuo proces.
PRI (20) – prioritet procesa.
NI (0) – nice vrijednost procesa.
VIRT (15340) – ukupna virtualna memorija procesa.
RES (9856) – količina stvarno korištene RAM memorije.
SHR (6144) – količina dijeljene memorije.
S (Sleeping) – stanje procesa. Proces trenutno miruje jer izvršava naredbu time.sleep().
CPU% (0.0) – trenutna iskorištenost procesora.
MEM% (0.1) – postotak korištenja radne memorije.
TIME+ (0:00.01) – ukupno CPU vrijeme koje je proces koristio.
Command (python3 hello.py) – naredba kojom je proces pokrenut.

## Načini prekidanja procesa
kill 1195 – šalje SIGTERM signal procesu.

kill -15 1195 – eksplicitno šalje SIGTERM signal i omogućuje uredno gašenje procesa.

kill -9 1195 – šalje SIGKILL signal i prisilno prekida proces.



## Napomena
Zadatak je izrađen i testiran u Ubuntu Linux okruženju (WSL). Python skripta, pokretanje procesa te analiza procesa pomoću alata htop
izvršeni su u terminalu Ubuntu sustava. 
U direktoriju se nalaze:
- `hello.py` – Python skripta korištena u zadatku
- `Screenshot_ubuntu.png` – prikaz izvođenja naredbi u Ubuntu terminalu
- `Screenshot_htop.png` – prikaz pokrenutog procesa u alatu htop