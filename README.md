Docker Image for [joeyespo/grip](https://github.com/joeyespo/grip)
====

For use only `grip --export`.

How to use.
----

```console
$ docker run -v ${PWD}:/work/ yokogawa/grip-export ./foo.md
$ ls
foo.md
foo.html
```

If you use `./run` script.

```console
$ ./run ./foo.md
$ ls
foo.md
foo.html
```

### use bash

```console
$ ./run bash
```

