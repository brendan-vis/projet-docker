FROM golang

WORKDIR /usr/src/app

COPY sudoku ./

RUN go build test/main.go

ENTRYPOINT [ "go", "run", "test/main.go" ]
