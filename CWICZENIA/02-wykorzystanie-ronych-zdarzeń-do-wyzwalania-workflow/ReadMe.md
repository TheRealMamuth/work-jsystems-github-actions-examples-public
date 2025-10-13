Ćwiczenie praktyczne 02 — Wykorzystanie różnych zdarzeń do wyzwalania workflowów

Opis ćwiczenia
Celem tego ćwiczenia jest poznanie różnych sposobów wyzwalania (uruchamiania) workflowów w GitHub Actions.

Instrukcje:
	1.	Utwórz plik 02-workflow-events.yaml w folderze .github/workflows w katalogu głównym Twojego repozytorium.
	2.	Nazwij workflow: 02 - Workflow Events.
	3.	Dodaj następujący wyzwalacz (trigger) do workflowu:
	•	push
	4.	Dodaj pojedynczą pracę (job) do workflowu:
	•	Job o nazwie echo ma działać na ubuntu-latest i zawierać jeden krok (step) o nazwie Show the trigger, który wypisze typ zdarzenia, które wyzwoliło workflow.
	5.	Zacommituj zmiany i wypchnij je (push). Poświęć chwilę, aby obejrzeć wynik uruchomienia workflowu.
	6.	Następnie dodaj więcej wyzwalaczy:
	•	pull_request
	•	schedule (wyrażenie cron)
	•	workflow_dispatch
	7.	Ponownie zacommituj i wypchnij zmiany. Poobserwuj różne sposoby, w jakie workflow się uruchamia.
	•	Możesz utworzyć Pull Request na GitHubie, aby zobaczyć, jak zmienia się wynik uruchomienia workflowu.
	•	Spróbuj też uruchomić workflow z interfejsu:
	•	Wejdź w zakładkę Actions na stronie głównej repozytorium.
	•	Wybierz po lewej workflow 02 - Workflow Events.
	•	Kliknij przycisk Run workflow po prawej, obok komunikatu „This workflow has a workflow_dispatch event trigger.”
	8.	Po zapoznaniu się z różnymi sposobami wyzwalania workflowu, zredukuj listę wyzwalaczy tak, aby pozostał tylko workflow_dispatch (żeby workflow nie uruchamiał się przy każdym pushu i nie zaśmiecał listy uruchomień).

Wskazówki
	•	Poprawna składnia crona
Obecnie GitHub Actions nie wspiera definicji crona zawierających sześć pól (np. 0 0 * * * *), tylko definicje pięciopolowe.
Aby zdefiniować trigger cron, użyj składni:
```yaml
on:
  schedule:
    - cron: '<wyrażenie_cron>'
```

	•	Dostęp do nazwy zdarzenia, które wyzwoliło workflow
Nazwę zdarzenia można uzyskać przez ${{ github.event_name }}. Przykład:
```yaml
steps:
  - name: Event name
    run: |
      echo "Event name: ${{ github.event_name }}"
```
