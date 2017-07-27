# Lorem docu

Generating and delivering content with using [Content Generator](https://github.com/jakub-gawlas/content-generator) and [Content Deliverer](https://github.com/jakub-gawlas/content-deliverer).

## Run

```bash
docker run --rm -it -p 3000:3000 jakubgawlas/lorem-docu
```
Application is running on `localhost:3000`.

Available endpoints:
- [GraphQL IDE (/graphiql)](http://localhost:3000/graphiql)
- [GraphQL endpoint (/graphql)](http://localhost:3000/graphql)
- [Resources (/files/:filename)](http://localhost:3000/files/solo.jpg)

## Build

```bash
docker build --build-arg RESOURCES_BASE_URI={{URI}} -t my-docu .
```

- **{{URI}}** base URI where resources will be served (default: `localhost:3000/files`)
