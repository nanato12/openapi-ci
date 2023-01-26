OAPI_CODEGEN_VERSION := v1.12.4

.PHONY: install_oapi_codegen
install_oapi_codegen:
	mkdir -p ./bin
	GOBIN=${PWD}/bin go install github.com/deepmap/oapi-codegen/cmd/oapi-codegen@${OAPI_CODEGEN_VERSION}

.PHONY: server_gen
server_gen:
	mkdir -p ./openapi/
	./bin/oapi-codegen -config ./config/oapi-codegen.yaml ./reference/test.yaml
