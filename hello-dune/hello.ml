(* simple Hello World for OCaml build with Dune

To build run:
        dune build hello.exe

To run this example:
        dune exec ./hello.exe

NOTE: .exe extension is required even on Unix platforms. It means
"native executable". Otherwise bytecode is used.

*)

(* define function "main" that has no arguments and returns nothing 
   - indicated with "()" after name *)
let main () = 
	Printf.printf "Hello, OCaml World!\n";
	exit 0;;


(* invoke our main function *)
main();;
