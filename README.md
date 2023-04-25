# Examples in OCaml language

Here are few trivial examples written
in [OCaml](https://ocaml.org/) language.

I'm interested int OCaml mainly to better understand
tool [Coccinelle](https://coccinelle.lip6.fr/) tool used to analyse
and patch C source code.


I use:
- openSUSE LEAP 15.2 with XFCE
- Eclipse 2020-03 release CDT C/C++ Edition

Installed additional `OCaIDE` plugin from Site:
- http://www.algo-prog.info/ocaide

These packages must be installed under openSUSE LEAP 15.2
so OCaml examples can be edited and build:

```bash
sudo zypper in ocaml ocaml-dune ocaml-camlp4-devel ocaml-ocamldoc make
```

Or under Debian 11 (tested CLI only):
```bash
sudo apt-get update
sudo apt-get install make ocaml-nox ocaml-dune git
```

Or under Fedora 38 (tested CLI only):
```bash
sudo dnf install git-core make ocaml ocaml-dune
```

For Windows (CLI only) please follow Cygwin64/Mingw installation
- from: https://github.com/fdopen/opam-repository-mingw
- at the end you may have to additionally run `opam install dune` to build
  `hello-dune/` example.

Example of `hello/` project in Eclipse with OCaIDE plugin:

![Hello in OCaIDE](assets/eclipse-ocaml-ide.png)


## Project list

* [hello/](hello) - initial trivial Hello World example.
* [hello-dune//](hello-dune) - Hello, world! - build with [Dune](https://dune.readthedocs.io/en/latest/overview.html) instead of make
* [hello-args/](hello-args) - "advanced" Hello World, that prints passed
  arguments (or at least `argv[0]` that contains program name).
* [wordcount-mll/](wordcount-mll) - Word Count utility written in
  [ocamllex(1)](https://caml.inria.fr/pub/docs/manual-ocaml/lexyacc.html).
  It is based on example from [Ocamllex Tutorial](http://www.iro.umontreal.ca/~monnier/3065/ocamllex-tutorial.pdf). I just added word-counting (there was
  only character and line counting).

  TIP: You can try my Flex based example
  from https://github.com/hpaluch-pil/flex-wc and compare results.
  In my simple test these results matches:

  ```bash
  $ cd ~/projects/ocaml-examples
  $ ../flex-wc/flex-wc < ../flex-wc/README.md
      46     117     755
  $ wordcount-mll/wordcount.exe < ../flex-wc/README.md
      46     117     755
  ```

