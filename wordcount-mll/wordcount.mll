(* wordcount.mll - WordCount written in OCamllex (like GNU Flex for Ocaml instead of C)
 * based on http://www.iro.umontreal.ca/~monnier/3065/ocamllex-tutorial.pdf
 * - just added word counting
 *)

{
  let num_lines = ref 0
  let num_chars = ref 0
}
rule count = parse
	| '\n' { incr num_lines; incr num_chars; count lexbuf }
	| _ { incr num_chars; count lexbuf }
	| eof { () }

{
  let main () =
  let lexbuf = Lexing.from_channel stdin in
  count lexbuf;
  Printf.printf "# of lines = %d, # of chars = %d\n" !num_lines !num_chars
  let _ = Printexc.print main ()
}