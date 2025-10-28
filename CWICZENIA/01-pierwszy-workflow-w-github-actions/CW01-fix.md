
# Practical Exercise 01 - Creating Our First Workflow / Ćwiczenie praktyczne 01 – Tworzenie naszego pierwszego workflow

---

## **English Version**

### Exercise Description

In this practical exercise, our goal is to create our first workflow.

Here are the instructions for the exercise:

1. **Create a file named** `01-building-blocks.yaml` under the `.github/workflows` folder at the root of your repository.

2. **Name the workflow:** `01 – Building Blocks`.

3. **Add the following triggers to your workflow:**
   - a. `push`
   - b. `workflow_dispatch`

4. **Add two jobs to the workflow:**
   - a. The first job, `echo-hello`, should run on `ubuntu-latest` and have a single step named **Say hello**, which prints `"Hello, World!"` on the screen.
   - b. The second job, `echo-goodbye`, should also run on `ubuntu-latest` and have two steps:
     -  i. The first step, named **Failed step**, should run a multi-line bash script that prints `"I will fail"` and exits with a non-zero code.  
     - ii. The second step, named **Say goodbye**, should simply print `"Goodbye!"`.

5. **Take some time to experiment** and observe what happens when a step fails during workflow execution.

6. **As a last step**, change the first step of the second job to exit with code 0 (success). Adjust the step name and printed message to match the new behavior.
   - a. Observe how this change impacts the workflow execution.

7. **Finally**, change the workflow triggers to contain only `workflow_dispatch` to prevent it from running on every push and cluttering the workflow run history.

---

### Tips

**Executing multi-line bash scripts**

To execute a multi-line bash script, you can use the following syntax:

```yaml
steps:
  - name: Multi-line bash
    run: |
      echo "I am"
      echo "a multi-line"
      echo "script."
```

---

## **Wersja polska**

### Opis ćwiczenia

W tym ćwiczeniu naszym celem jest stworzenie pierwszego workflow.

Instrukcje do ćwiczenia:

1. **Utwórz plik o nazwie** `01-building-blocks.yaml` w folderze `.github/workflows` w katalogu głównym repozytorium.

2. **Nazwij workflow:** `01 – Building Blocks`.

3. **Dodaj następujące wyzwalacze:**
   - a. `push`
   - b. `workflow_dispatch`

4. **Dodaj dwa zadania (jobs):**
   - a. Pierwsze zadanie, `echo-hello`, powinno działać na `ubuntu-latest` i zawierać jeden krok o nazwie **Say hello**, który wypisuje `"Hello, World!"` na ekranie.  
   - b. Drugie zadanie, `echo-goodbye`, również powinno działać na `ubuntu-latest` i mieć dwa kroki:  
     - i. Pierwszy krok, **Failed step**, powinien uruchamiać wieloliniowy skrypt bash, który wypisuje `"I will fail"` i kończy się kodem błędu (innym niż 0).  
     - ii. Drugi krok, **Say goodbye**, powinien po prostu wypisać `"Goodbye!"`.

5. **Poeksperymentuj**, aby zobaczyć, co się dzieje, gdy krok zakończy się błędem.

6. **Na koniec**, zmień pierwszy krok drugiego zadania tak, aby kończył się kodem 0 (sukces). Dostosuj nazwę kroku i wiadomość do nowego stanu.
   - a. Sprawdź, jak ta zmiana wpływa na działanie workflow.

7. **Zmień wyzwalacze workflow**, tak aby zawierały tylko `workflow_dispatch`, co zapobiegnie jego uruchamianiu przy każdym pushu i zanieczyszczaniu historii uruchomień.

---

### Wskazówki

**Wykonywanie wieloliniowych skryptów bash**

Aby wykonać wieloliniowy skrypt bash, możesz użyć poniższej składni:

```yaml
steps:
  - name: Multi-line bash
    run: |
      echo "Jestem"
      echo "wieloliniowym"
      echo "skryptem."
```
