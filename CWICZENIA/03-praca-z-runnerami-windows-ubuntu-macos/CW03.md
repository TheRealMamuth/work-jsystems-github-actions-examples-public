# Ćwiczenie praktyczne 03 – Praca z runnerami Windows i Ubuntu (i macOS)

## Opis ćwiczenia
Celem tego ćwiczenia jest zbadanie różnych możliwości ustawiania runnerów dla naszych workflowów.

## Instrukcje:
1. Utwórz plik o nazwie 03-workflow-runners.yaml w folderze .github/workflows w katalogu głównym repozytorium.
2. Nazwij workflow: 03 - Workflow Runners.
3. Dodaj następujący wyzwalacz (trigger) do workflowu:
   - push
4. Dodaj trzy joby do workflowu:
   - Pierwszy job, ubuntu-echo, ma działać na ubuntu-latest i mieć jeden krok Show OS, który uruchamia wielolinijkowy skrypt bash wypisujący: `This job is running on an Ubuntu runner.` a w następnej linii nazwę systemu runnera.
   - Drugi job, windows-echo, ma działać na windows-latest i mieć jeden krok Show OS, który uruchamia wielolinijkowy skrypt bash wypisujący: `This job is running on a Windows runner.`a w następnej linii nazwę systemu runnera.
   - Trzeci job, mac-echo, ma działać na macos-latest i mieć jeden krok Show OS, który uruchamia wielolinijkowy skrypt bash wypisujący: `This job is running on a MacOS runner.` a w następnej linii nazwę systemu runnera.
5. Zmień wyzwalacze workflowu tak, aby zawierały tylko workflow_dispatch, żeby workflow nie uruchamiał się przy każdym push i nie zaśmiecał listy wykonań.

## Wskazówki
- Uważaj na runnerów macOS — są drodzy!
- W prywatnych repozytoriach runnerzy macOS są kosztowni i mogą łatwo zużyć wszystkie darmowe minuty w miesiącu. Zachowaj ostrożność, jeśli uruchamiasz workflowy w prywatnym repo.
- Jak uzyskać system runnera: dostępny jest w zmiennej środowiskowej $RUNNER_OS.
- Dostęp do zmiennych środowiskowych w Windows: domyślna powłoka Windows nie jest zgodna ze składnią bash do odczytu zmiennych. Możesz użyć zgodnej metody lub jawnie ustawić powłokę na bash dla danego kroku:
```yaml
steps:
  - name: Show OS
    shell: bash
    run: echo "I'm running on bash."
```
