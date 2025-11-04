Cel ćwiczenia
	•	Zbudować obraz nginx z prostymi plikami statycznymi.
	•	Przekazać zmienne na etapie build (ARG/labels).
	•	Użyć docker/bake-action@v6 do buildu (Bake).
	•	Dodać image annotations generowane z docker/metadata-action@v5 i wstrzyknięte do Bake.
	•	Włączyć cache typu gha dla szybszych buildów.
	•	Opcjonalnie zbudować multi-arch (amd64/arm64).

.
├─ Dockerfile
├─ docker-bake.hcl
├─ nginx/
│  ├─ default.conf
│  └─ html/
│     └─ index.template.html
└─ .github/
   └─ workflows/
      └─ ci.yml

```conf
server {
  listen 80;
  server_name _;

  location / {
    root   /usr/share/nginx/html;
    index  index.html;
  }

  location /healthz {
    return 200 'ok';
    add_header Content-Type text/plain;
  }
}
```


