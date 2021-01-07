FROM dbgso/asciidoctor-watcher

RUN gem install -N asciidoctor-kroki

ENV INDEX_FILE="index.adoc"

VOLUME [ "/data" ]
WORKDIR /data

ENTRYPOINT ["filewatcher"]
CMD ["-l", "**/*.adoc **/*.puml", "asciidoctor -r asciidoctor-kroki ${INDEX_FILE}"]
