Tłumaczenie zadania

Practical Exercise 05 – Using Filters and Activity Types

Opis ćwiczenia
Celem ćwiczenia jest poznanie różnych sposobów użycia filtrów zdarzeń (event filters) i typów aktywności (activity types) w GitHub Actions, aby lepiej sterować tym, kiedy uruchamiane są workflowy.

Stworzymy dwa workflowy:

Workflow 1
	1.	Utwórz plik 05-1-filters-activity-types.yaml w folderze .github/workflows w katalogu głównym repozytorium.
	2.	Nadaj workflowowi nazwę: 05 - 1 - Event Filters and Activity Types.
	3.	Dodaj wyzwalacz pull_request:
	•	ogranicz typy aktywności do opened oraz synchronize,
	•	dodaj filtr zdarzeń tak, by workflow uruchamiał się tylko dla zmian kierowanych do gałęzi main.
	4.	Dodaj jeden job o nazwie echo z pojedynczym krokiem wypisującym:
Running whenever a PR is opened or synchronized AND base branch is main.
	5.	Zacommituj i wypchnij zmiany.
	6.	Zedytuj README.md w katalogu głównym (dowolna zmiana) i zapisz commit na nowej gałęzi o nazwie pr-test-1 (w UI opcja jest na dole okna zapisu).
	7.	Otwórz Pull Request z pr-test-1 do main i sprawdź wynik uruchomionego workflowu.

Workflow 2
	1.	Utwórz plik 05-2-filters-activity-types.yaml w .github/workflows.
	2.	Nadaj nazwę: 05 - 2 - Event Filters and Activity Types.
	3.	Dodaj wyzwalacz pull_request:
	•	ogranicz typy aktywności do closed,
	•	dodaj filtr, by workflow uruchamiał się tylko dla PR-ów kierowanych do main.
	4.	Dodaj jeden job echo z krokiem wypisującym:
Running whenever a PR is closed.
	5.	Zacommituj i wypchnij zmiany.
	6.	Zamknij PR utworzony w pierwszej części i sprawdź wynik uruchomionego workflowu.
	7.	Zmień wyzwalacze workflowu tak, aby zawierały tylko workflow_dispatch (żeby nie uruchamiał się przy każdym pushu).

