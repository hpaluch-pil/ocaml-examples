(* wordcount.mll - WordCount written in OCamllex (like GNU Flex for Ocaml instead of C)
 * based on http://www.iro.umontreal.ca/~monnier/3065/ocamllex-tutorial.pdf
 * - just added word counting - "num_words" and use output format as "flex-wc.l" example
 *)

{
  let num_lines = ref 0
  let num_chars = ref 0
	let num_words = ref 0
}
rule count = parse
	| '\n' { incr num_lines; incr num_chars; count lexbuf }
	| ['a'-'z' 'A'-'Z']+ as word 
		{ incr num_words; num_chars := !num_chars + String.length(word); count lexbuf  }
	| _ { incr num_chars; count lexbuf }
	| eof { () }

{
  let main () =
  	let lexbuf = Lexing.from_channel stdin in
  	count lexbuf;
  	Printf.printf "%8d%8d%8d\n" !num_lines !num_words !num_chars
  let _ = Printexc.print main ()
}