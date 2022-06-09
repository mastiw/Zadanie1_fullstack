## Zadanie1 - Programowanie Fullstack w Chmurze Obliczeniowej
### Część 1

Proszę napisać program serwera (dowolny język programowania), który realizować będzie
następującą funkcjonalność:
- a. po uruchomieniu kontenera, serwer pozostawia w logach informację o dacie
uruchomienia, imieniu i nazwisku autora serwera (imię i nazwisko studenta) oraz porcie
TCP, na którym serwer nasłuchuje na zgłoszenia klienta.

```bash
docker-compose up --build
```
![image](https://user-images.githubusercontent.com/62160228/172490725-24a28f9b-9784-4b22-b985-9b213882447e.png)


Wyświetlenie logów kontenera:

```bash
docker logs -f zadanie1_fullstack_web_1
```
![image](https://user-images.githubusercontent.com/62160228/172490740-02d557c5-e114-4b97-af34-b75e3d90edc5.png)


- b. na podstawie adresu IP klienta łączącego się z serwerem, w przeglądarce powinna zostać
wyświetlona strona informująca o adresie IP klienta i na podstawie tego adresu IP, o dacie
i godzinie w jego strefie czasowej. 

Użyto strony ipinfo.io w celu wyświetlenia informacji o adresie IP klienta:

![image](https://user-images.githubusercontent.com/62160228/172487844-464b7b73-0987-4af3-8b59-41abedd8d165.png)

Kod źródłowy strony do wyświetlania adresu IP klienta:

![image](https://user-images.githubusercontent.com/62160228/172488188-c78498d5-1014-46cd-b64a-290abef53c14.png)

### Część 2

Opracować plik Dockerfile, który pozwoli na zbudowanie obrazu kontenera realizującego
funkcjonalność opisaną w punkcie 1. Przy ocenie brane będzie sposób opracowania tego pliku
(dobór obrazu bazowego, wieloetapowe budowanie obrazu, ewentualne wykorzystanie warstwy
scratch, optymalizacja pod kątem funkcjonowania cache-a w procesie budowania). Dockerfile
powinien również zawierać informację o autorze tego pliku (ponownie imię i nazwisko studenta).

Zawartość pliku Dockerfile:

![image](https://user-images.githubusercontent.com/62160228/172489061-a6c18e77-e072-4139-af6b-031e24da38a4.png)

Zawartość pliku docker-compose:

![image](https://user-images.githubusercontent.com/62160228/172488759-8f2e6092-3ac3-49f0-a2cf-9ebaad1e92ed.png)

### Część 3

Należy podać polecenia niezbędne do:
- a. zbudowania opracowanego obrazu kontenera,

```bash
docker-compose build
```

![image](https://user-images.githubusercontent.com/62160228/172490122-d047558f-f11d-488c-9b27-bf23db2e90a7.png)

- b. uruchomienia kontenera na podstawie zbudowanego obrazu,

```bash
docker-compose up -d
```

![image](https://user-images.githubusercontent.com/62160228/172490490-4f2fd811-5e61-4d4c-b773-107e38d5eb32.png)

- c. sposobu uzyskania informacji, które wygenerował serwer w trakcie uruchamiana kontenera
(patrz: punkt 1a),

```bash
docker logs -f zadanie1_fullstack_web_1
```

![image](https://user-images.githubusercontent.com/62160228/172490508-62003ccb-d56c-4533-82a3-ad5fa89dba69.png)

- d. sprawdzenia, ile warstw posiada zbudowany obraz.

```bash
docker history zadanie1_fullstack_web
```

![image](https://user-images.githubusercontent.com/62160228/172490527-db2853f3-0e29-4419-9b64-ddfda5ebf17f.png)


### Część 4

Zbudować obrazy kontenera z aplikacją opracowaną w punkcie nr 1, które będą pracował na
architekturach: linux/arm/v7, linux/arm64/v8 oraz linux/amd64. Obrazy te należy przesłać do
swojego repozytorium na DockerHub. W sprawozdaniu należy podać wykorzystane instrukcje wraz
z wynikiem ich działania I ewentualnymi komentarzami.

Do zbudowania obrazu użyto komendy:

```bash
docker buildx build -t mastiw/zadanie1_fullstack --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --push .
```

![image](https://user-images.githubusercontent.com/62160228/172497939-731e4cb2-aece-403e-8318-0ff0d6c09938.png)

Dockerhub:

![image](https://user-images.githubusercontent.com/62160228/172497999-ab5dde73-a05a-4a51-b465-578dadc9e41a.png)

### Część dodatkowa

- z wykorzystaniem GitHubActions

Dodano plik .yml w katalogu workflows umożliwiający użycie GitHubActions oraz dodano tokeny.

![image](https://user-images.githubusercontent.com/62160228/172927806-7f643bec-91bd-4841-9cc0-b46b2af595ce.png)

![image](https://user-images.githubusercontent.com/62160228/172931800-e2cd18e9-fcf9-4f83-8350-5f7dd3a20e6f.png)

- z przesłaniem danych nie na DockerHub a na repozytorium GitHub wraz z krótkim opisem
konfiguracji GitHub Container Registry

Dodano plik .yml w katalogu workflows umożliwiający użycie GitHub Container Registry.

![image](https://user-images.githubusercontent.com/62160228/172932763-1d27dc92-1f83-49c3-b8f3-d270c13ca984.png)

![image](https://user-images.githubusercontent.com/62160228/172932794-b54ed606-fe24-4edd-bdd5-ed7aada344af.png)







