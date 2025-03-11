wallet-chain-btc:
	go mod tidy
	env GO111MODULE=on go build -v $(LDFLAGS) ./cmd/wallet-chain-btc

build:
	go mod tidy
	env GO111MODULE=on go build -v $(LDFLAGS) ./cmd/wallet-chain-btc

clean:
	rm wallet-chain-btc

test:
	go test -v ./...

lint:
	golangci-lint run ./...

proto:
	sh ./bin/compile.sh

.PHONY: \
	wallet-chain-btc \
	clean \
	test \
	lint \
	proto