all: deps
gx:
	go get github.com/whyrusleeping/gx
	go get github.com/whyrusleeping/gx-go

deps: gx 
	gx --verbose install --global
	gx-go rewrite

test: deps
	go test -v .
publish:
	gx-go rewrite --undo
