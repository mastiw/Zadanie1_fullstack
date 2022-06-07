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
W sprawozdaniu proszę umieścić kod oprogramowania wraz z niezbędnymi komentarzami. 
