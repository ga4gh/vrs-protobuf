.PHONY: FORCE
.SUFFIXES:
.DELETE_ON_ERROR:

YAMLS:=schema/vrs.yaml
PROTOS:=schema/vrs.proto

all: ${PROTOS}

%.proto: %.yaml
	./vrs2proto/y2p <$< >$@
