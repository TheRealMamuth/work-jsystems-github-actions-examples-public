# Zadanie: Pipeline Jenkins – pobieranie i uruchamianie skryptu sprawdzającego pogodę

## Cel zadania
Celem zadania jest przygotowanie i uruchomienie pipeline’u Jenkins, który:
1. Pobiera wybrane pliki z repozytorium Git (z użyciem *sparse checkout*),
2. Przyjmuje parametr wejściowy (miasto),
3. Wykorzystuje bezpiecznie przechowywany klucz API,
4. Uruchamia skrypt powłoki (bash), który sprawdza pogodę dla podanego miasta.

---

## Wymagania wstępne

Student powinien mieć:
- działający Jenkins (lokalnie lub zdalnie),
- dostęp do konfiguracji pipeline (Pipeline job),
- skonfigurowane credentials w Jenkins:
  - ID: `API_KEY_W`
  - typ: **Secret Text**
  - wartość: klucz API do serwisu pogodowego,
- dostęp do internetu (repozytorium GitHub).

---

## Opis pipeline – elementy do przygotowania

Student ma stworzyć pipeline w Jenkinsfile (Pipeline Script), który zawiera następujące elementy:

---

### 1️Sekcja `pipeline` i agent

```groovy
pipeline {
    agent any
}
```

**Opis:**
- Pipeline ma działać na dowolnym dostępny agencie (`agent any`).
- Jenkins sam wybierze node wykonawczy.

---

### 2️Parametry wejściowe

```groovy
parameters {
    string(name: 'CITY', defaultValue: 'Warsaw', description: 'Miasto')
}
```

**Opis:**
- Pipeline musi przyjmować parametr typu `string`.
- Nazwa parametru: `CITY`.
- Domyślna wartość: `Warsaw`.
- Parametr będzie przekazywany do skryptu bash.

---

### 3️Zmienne środowiskowe i credentials

```groovy
environment {
    API_KEY_W = credentials('API_KEY_W')
}
```

**Opis:**
- Pipeline musi korzystać z credentials Jenkins.
- Należy pobrać sekret o ID `API_KEY_W`.
- Wartość ta ma być dostępna jako zmienna środowiskowa.

---

### 4️Stage: Checkout

```groovy
stage('Checkout') {
    steps {
        checkout scmGit(
            branches: [[name: '*/main']],
            extensions: [
                sparseCheckout([[path: 'CWICZENIA/06-context/pogoda/']])
            ],
            userRemoteConfigs: [[
                url: 'https://github.com/TheRealMamuth/work-jsystems-github-actions-examples-public-tasks.git'
            ]]
        )
    }
}
```

**Opis:**
- Pobranie repozytorium GitHub.
- Gałąź: `main`.
- Użycie sparse checkout – tylko wybrany katalog.

---

### 5️Stage: Check Weather

```groovy
stage('Check Weather') {
    steps {
        sh '''
            ls -la
            chmod +x ./CWICZENIA/06-context/pogoda/start.sh
            ./CWICZENIA/06-context/pogoda/start.sh ${CITY} ${API_KEY_W}
        '''
    }
}
```

**Opis:**
- Wylistowanie plików,
- Nadanie uprawnień do skryptu,
- Uruchomienie skryptu z parametrami.

---

## Oczekiwany rezultat

Po uruchomieniu pipeline:
1. Jenkins pobierze wskazany katalog,
2. Przyjmie parametr miasta,
3. Wstrzyknie klucz API,
4. Uruchomi skrypt,
5. Wyświetli wynik w logach.

---

## Zadania do wykonania przez studenta

1. Utworzyć Pipeline Job w Jenkins,
2. Skonfigurować pipeline,
3. Dodać credentials,
4. Uruchomić pipeline z różnymi wartościami CITY,
5. Sprawdzić logi.

---

## Zadania dodatkowe (opcjonalne)

- Walidacja parametru CITY,
- Obsługa błędów,
- Dodanie dodatkowego stage debug,
- Zapis wyniku do pliku.
