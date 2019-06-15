.PHONY: gen-open-api

gen-open-api:
	@docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate \
		-i docs/api/schema.json \
		-g typescript-axios \
		-c openapi-generator-config.json \
		-o frontend/javascripts/apis/muldel