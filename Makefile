start:
	cd signatories-ledger && daml start

build:
	cd signatories-ledger && daml build
	cd signatories-ledger && daml codegen js -o daml.js .daml/dist/*.dar

deploy: build
	mkdir -p deploy
	cp signatories-ledger/.daml/dist/*.dar deploy

clean:
	cd signatories-ledger && rm -rf .daml
	cd signatories-ledger && rm -rf daml.js
	rm -rf deploy
