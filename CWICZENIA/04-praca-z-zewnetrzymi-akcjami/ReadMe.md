# Practical Exercise 04 – Praca z zewnętrznymi akcjami (Third-Party Custom Actions)

## Opis ćwiczenia
Celem tego ćwiczenia jest zbadanie, jak możemy używać zewnętrznych (third-party) akcji w GitHub Actions, aby wykonywać zadania bez definiowania wszystkiego od zera.

Do tego wykorzystamy aplikację React, którą zeskafoldujemy narzędziem create-react-app. W sekcji „Wskazówki” znajdziesz konkretną komendę. Oto instrukcje:

Wygeneruj aplikację React:
1. Utwórz nowy folder o nazwie 04-using-actions w katalogu głównym repozytorium.
2. W terminalu przejdź do tego katalogu (cd) i zeskafolduj aplikację React w podfolderze react-app. Możesz utworzyć katalog samodzielnie albo pozwolić zrobić to narzędziu create-react-app.
3. Po zakończeniu konfiguracji Reacta powinien pojawić się komunikat o powodzeniu.
4. Poświęć chwilę na przejrzenie plików i poznanie struktury projektu.

Utwórz pierwszą wersję workflow:
1. Utwórz plik 04-using-actions.yaml w katalogu .github/workflows w katalogu głównym repozytorium.
2. Nazwij workflow: 04 - Using Actions.
3. Dodaj wyzwalacz (trigger): push.
4. Dodaj pojedynczą pracę (job) o nazwie build z dwiema czynnościami (steps):
   - Checkout Code – pobiera kod repozytorium do bieżącego katalogu roboczego.
   - Printing Folders – wypisuje strukturę katalogów po poleceniu checkout.
5. Zacommituj zmiany i wypchnij kod.
6. Sprawdź wynik uruchomienia workflow.

Rozszerz workflow o ustawienie Node i instalację zależności aplikacji React:
1. Usuń krok Printing Folders.
2. Dodaj nowy krok Setup Node, który ustawi Node w wersji 20.x.
3. Dodaj krok Install Dependencies, który uruchomi npm ci w katalogu aplikacji React. Możesz:
   - najpierw zrobić cd do katalogu i dopiero uruchomić npm ci, albo
   - użyć working-directory: 04-using-actions/react-app.
4. Commit + push.
5. Sprawdź wynik workflow.

Rozszerz workflow o uruchomienie testów automatycznych aplikacji React:
1. Dodaj krok Run Unit Tests po Install Dependencies, który uruchomi npm run test w katalogu aplikacji React (analogicznie: cd albo working-directory).
2. Commit + push.
3. Sprawdź wynik workflow.

Zmień wyzwalacze workflow tak, aby zawierały tylko workflow_dispatch, aby zapobiec uruchamianiu przy każdym push i nie zaśmiecać listy uruchomień.

## Wskazówki
- Skafold aplikacji React z create-react-app:
  - W folderze 04-using-actions uruchom:
  - npx create-react-app --template typescript react-app
- Używanie zewnętrznych akcji w GitHub Actions:
Zamiast run użyj uses i podaj nazwę + wersję akcji, np.:
```yaml
steps:
  - name: Using the Checkout Action
    uses: actions/checkout@v4
```

- Przydatne akcje w tym ćwiczeniu:
  - actions/checkout@v4 – checkout repozytorium.
  - actions/setup-node@v4 – instalacja Node (np. node-version: '20.x').
```yaml
steps:
  - name: Setup Node
    uses: actions/setup-node@v4
    with:
      node-version: '20.x'
```
