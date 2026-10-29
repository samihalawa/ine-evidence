FROM python:3.12-slim-bookworm@sha256:e697c81897302a4c4333bade000d98038fbb21eb064f8ee1fd42d02ebcd9d337
LABEL org.opencontainers.image.title="ine-evidence" \
      org.opencontainers.image.version="0.4.0" \
      org.opencontainers.image.source="https://github.com/samihalawa/ine-evidence" \
      org.opencontainers.image.licenses="MIT" \
      io.modelcontextprotocol.server.name="io.github.samihalawa/ine-evidence"
ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1 HOME=/nonexistent
WORKDIR /opt/plugin
COPY --chown=65532:65532 skills/ine-evidence/scripts/ /opt/plugin/skills/ine-evidence/scripts/
COPY --chown=65532:65532 skills/ine-evidence/references/ /opt/plugin/skills/ine-evidence/references/
COPY --chown=65532:65532 LICENSE SECURITY.md PRIVACY.md SUPPORT.md /opt/plugin/
USER 65532:65532
ENTRYPOINT ["python3", "/opt/plugin/skills/ine-evidence/scripts/mcp_server.py"]
