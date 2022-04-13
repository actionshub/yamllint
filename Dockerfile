FROM python

RUN pip install yamllint
ENV MATCHERS_DIR="._actionshub_problem-matchers"
ENV MATCHER_FILE="${MATCHERS_DIR}/yamllint.json"

RUN mkdir -p ${MATCHERS_DIR}
COPY yamllint.json ${MATCHER_FILE}
RUN echo "::[add-matcher]${MATCHER_FILE}"

ENTRYPOINT ["yamllint",".", "--format", "github"]
