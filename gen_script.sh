protoc -I proto \
    -I ./protoc-gen-validate \
    ./proto/homie.proto \
    --go_out=./gen/go \
    --go_opt=paths=source_relative \
    --go-grpc_out=./gen/go \
    --go-grpc_opt=paths=source_relative \
    --validate_out=lang=go:./gen/go \
    --validate_opt=paths=source_relative


# protoc -I proto ./proto/homie.proto \
#     --go_out=./gen/go \
#     --go_opt=paths=source_relative \
#     --go-grpc_out=./gen/go \
#     --go-grpc_opt=paths=source_relative \
#     --proto_path=. \
#     --proto_path="$./protoc-gen-validate/validate/validate.proto" \
#     --validate_out="lang=go:./validate"