FROM jakubgawlas/content-generator as generator

# Copy content config and sources
COPY src /src/

# Set base URI for resources
ARG RESOURCES_BASE_URI
ENV APP_RESOURCES_BASE_URI ${RESOURCES_BASE_URI}

# Generate content
RUN npm start

FROM jakubgawlas/content-deliverer

# Copy generated content
COPY --from=generator /out/ /data/

# Run server
CMD ["npm", "start"]