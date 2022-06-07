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
![image](https://user-images.githubusercontent.com/62160228/172483885-a4243b00-557a-4103-8003-a2406074f75f.png)

Wyświetlenie logów kontenera:

```bash
docker logs -f zadanie1_fullstack_web_1
```
![image](https://user-images.githubusercontent.com/62160228/172484158-b07d9c74-2da6-4f85-ad6f-88cbdb2eca77.png)


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

![image](https://user-images.githubusercontent.com/62160228/172488507-4ac89182-519d-4550-8183-e17dfc227be8.png)

Zawartość pliku docker-compose:

![image](https://user-images.githubusercontent.com/62160228/172488759-8f2e6092-3ac3-49f0-a2cf-9ebaad1e92ed.png)






