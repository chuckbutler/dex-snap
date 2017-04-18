# Dex Snap

Snap packaging for [CoreOS Dex](https://github.com/coreos/dex)

### Building Notes

This snap assumes it will be run in a lxd container via `snapcraft cleanbuild`.
No testing has been performed building on the host system, as its got a custom script to update
the golang tooling and compile dex using go 1.7 or greater. This can be deprecated once the
go snapcraft plugin supports channels.
