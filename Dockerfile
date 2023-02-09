FROM python:3.11-slim

ENV MATCHERS_DIR="._actionshub_problem-matchers" \
  MATCHER_FILE="${MATCHERS_DIR}/yamllint.json"

COPY yamllint.json ${MATCHER_FILE}
RUN pip install yamllint==v1.29.0 \
  && mkdir -p ${MATCHERS_DIR} \
  && echo "::[add-matcher]${MATCHER_FILE}"

ENTRYPOINT ["yamllint",".", "--format", "github"]
