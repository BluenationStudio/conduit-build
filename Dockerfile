FROM gcr.io/distroless/static-debian11
EXPOSE 6167

ENV CONDUIT_PORT=6167 \
    CONDUIT_ADDRESS="0.0.0.0" \
    CONDUIT_DATABASE_PATH=${DEFAULT_DB_PATH} \
    CONDUIT_CONFIG='' \
	RUST_BACKTRACE=1

WORKDIR /data/conduitdb
WORKDIR /app
COPY --chmod=500 --chown=nonroot:nonroot ./conduit /app/
ENTRYPOINT ["/conduit"]