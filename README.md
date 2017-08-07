# Lorem docu

Generating and delivering content with using [Content Generator](https://github.com/jakub-gawlas/content-generator) and [Content Deliverer](https://github.com/jakub-gawlas/content-deliverer).

## Run

```bash
docker run --rm -it -p 3000:3000 jakubgawlas/lorem-docu
```
Application is running on `localhost:3000`.

Available endpoints:
- [GraphQL IDE (/graphiql)](http://localhost:3000/graphiql)
- GraphQL endpoint (/graphql), for example http://localhost:3000/graphql?query={documentation{name%20description%20documents{title%20tags%20content}}}
- [Resources (/files/:filename)](http://localhost:3000/files/solo.jpg)

## Build

Files required to generate documentation are placed in `src` dir:
- configuration file `docu.config.json`
- `docu` dir, which contains sources of content to generate

```bash
docker build --build-arg RESOURCES_BASE_URI={{URI}} -t my-docu .
```

- **{{URI}}** base URI where resources will be served (default: `localhost:3000/files`)

## Deploy on Kubernetes

1. Deployment
```bash
kubectl create -f kubernetes/deployment.yaml
```

2. Service
```bash
kubectl create -f kubernetes/service.yaml
```

3. Ingress
```bash
kubectl create -f kubernetes/ingress.yaml
```
