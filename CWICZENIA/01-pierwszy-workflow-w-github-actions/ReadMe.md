# Ćwiczenie 1: Pierwszy workflow w GitHub Actions
W tym ćwiczeniu stworzymy nasz pierwszy workflow w GitHub Actions.

## Instrukcje:
1. Utwórz plik 01-building-blocks.yaml w folderze .github/workflows w katalogu głównym repozytorium.
2. Nazwij workflow: 01 - Building Blocks.
3. Dodaj wyzwalacze (triggers):
    1. push
    2. workflow_dispatch
4. Dodaj dwa joby:
    1. echo-hello — uruchamiany na ubuntu-latest, zawiera jeden krok nazwany Say hello, który wypisuje na ekranie komunikat "Hello, World!".
    2. echo-goodbye — uruchamiany na ubuntu-latest, zawiera dwa kroki:
	    1. krok Failed step uruchamia wielolinijkowy skrypt bash, który wypisuje "I will fail" i kończy się kodem różnym od zera,
	    2. krok Say goodbye wypisuje "Goodbye!".
5. Poeksperymentuj i sprawdź, co dzieje się, gdy krok zakończy się błędem podczas wykonania workflow.
6. Na koniec zmień pierwszy krok drugiego joba tak, aby kończył się kodem zero (sukces). Możesz też zmienić jego nazwę i treść komunikatu odpowiednio do nowego stanu.
7. Zobacz, jak ta zmiana wpływa na wykonanie workflow.
8. Zmień wyzwalacze workflow tak, aby zawierały tylko workflow_dispatch, żeby nie uruchamiać workflow przy każdym push i nie zaśmiecać listy uruchomień.

## Wskazówka — wielolinijkowy bash:
```yaml
steps:
  - name: Multi-line bash
    run: |
      echo "I am"
      echo "a multi-line"
      echo "script."
```

## Dodatkowe wskazówki do eksperymentów
- Jeśli chcesz mimo błędu wykonać kolejne kroki w jobie, możesz dodać do kroku pole continue-on-error: true. (Nie było wymagane w zadaniu, ale warto wiedzieć.)
- Aby wymusić kolejność jobów (zależności), użyj needs: — tutaj nie jest potrzebne, bo joby są niezależne.
