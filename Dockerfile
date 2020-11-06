FROM golang
COPY app.go .
RUN go get -d -v \
    github.com/lib/pq \
    github.com/julienschmidt/httprouter
RUN go build -o a.out
RUN ./a.out
EXPOSE 8000

