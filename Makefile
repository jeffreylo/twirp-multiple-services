PROTOC_CMD := protoc \
	-I=./rpc \
	--go_out=paths=source_relative:./rpc \
	--twirp_out=paths=source_relative:./rpc

.PHONY: build
build:
	$(PROTOC_CMD) rpc/haberdasher/v1/*.proto rpc/cordswainer/v1/*.proto
