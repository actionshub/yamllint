FROM python:slim

LABEL org.opencontainers.image.description \
  "Yamllint Action for GitHub Actions"

ENV MATCHERS_DIR="._actionshub_problem-matchers" \
  MATCHER_FILE="${MATCHERS_DIR}/yamllint.json"

COPY yamllint.json ${MATCHER_FILE}
RUN pip install yamllint \
  && mkdir -p ${MATCHERS_DIR} \
  && echo "::[add-matcher]${MATCHER_FILE}"

ENTRYPOINT ["yamllint",".", "--format", "github"]
