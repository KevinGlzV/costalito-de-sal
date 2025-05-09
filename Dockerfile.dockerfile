FROM kong:latest

ENV KONG_DATABASE=off
ENV KONG_DECLARATIVE_CONFIG=/usr/local/kong/declarative/kong.yml

COPY kong.yml /usr/local/kong/declarative/kong.yml

EXPOSE 8000 8001

CMD ["kong", "docker-start"]
