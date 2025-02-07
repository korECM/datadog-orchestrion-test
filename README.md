## Reproduce

```shell
docker build .
```

```
 => ERROR [7/7] RUN CGO_ENABLED=0 orchestrion go build -o test_app ./cmd/app                                                                                                                         0.2s
------
 > [7/7] RUN CGO_ENABLED=0 orchestrion go build -o test_app ./cmd/app:
0.191 loading injector configuration: in ".": -: no Go files in /app
0.191 go: error obtaining buildID for go tool compile: exit status 255
------
Dockerfile:15
--------------------
  13 |     COPY cmd/app ./cmd/app
  14 |     
  15 | >>> RUN CGO_ENABLED=0 orchestrion go build -o test_app ./cmd/app
  16 |     
--------------------
ERROR: failed to solve: process "/bin/sh -c CGO_ENABLED=0 orchestrion go build -o test_app ./cmd/app" did not complete successfully: exit code: 1
```
