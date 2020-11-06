FROM ubuntu:19.04
ENTRYPOINT ["bash"]
CMD ["--posix"]
FROM golang
COPY app.go .
RUN go get -d -v \
    github.com/lib/pq \
    github.com/julienschmidt/httprouter
CMD ["/usr/bin/sh", "go build -o a.out"]
EXPOSE 8000

