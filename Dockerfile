FROM klakegg/hugo as builder

RUN mkdir -p /site/src /site/output
WORKDIR /site
COPY config.toml src/.
COPY configTaxo.toml src/.
COPY content/ src/content
COPY layouts/ src/layouts
COPY static/ src/static
COPY themes src/themes

RUN cd /site/src && hugo -d /site/output



FROM nginx

COPY --from=builder /site/output/ /usr/share/nginx/html/
