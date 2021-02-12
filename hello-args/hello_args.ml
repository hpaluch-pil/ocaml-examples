(* build with: ocamlopt -o hello hello.ml *)

(* returns number of passed arguments, minus one 'cause there we have to exclude
   1st argument - program name like in C main() function *)
let number_of_args (args: string array) : int   = Array.length args - 1

(* function called for each array item - prints index and value, prototype is *)
(* val dump_arg_item : int -> string -> unit = <fun> *)
let dump_arg_item (i:int) (str:string) : unit = Printf.printf "%d=%s\n" i str;;

(* Another definition with same prototype: *)
(* val dump_arg_item : int -> string -> unit = <fun> *)
let dump_arg_item2 : int -> string -> unit = fun i str -> Printf.printf "%d=%s\n" i str;;

(* The () tells that function "main" has no parameters AND returns nothing *)
let main () =
        Printf.printf "Hello, world!\n";
        (* see https://www.ocaml.org/releases/4.11/htmlman/libref/Sys.html *)
        (* WARNING! Sys.argv is ARRAY - NOT list! Notice that array        *)
        (* indexing operator is ".(index)" instead of [index]              *)
        Printf.printf "My name is '%s'\n" Sys.argv.(0);
        (* See                                                             *)
        (* https://www.ocaml.org/releases/4.11/htmlman/libref/Array.html   *)
        Printf.printf "You have specified %d arguments (0th is program name):\n" (number_of_args Sys.argv);
        (* Array.mapi returns value (array) - we must therefore dump this value using ignore(fn) *)
        ignore(Array.mapi dump_arg_item Sys.argv);
        Printf.printf "Dumping arguments using function:\n";
        ignore(Array.mapi dump_arg_item2 Sys.argv);
        exit 0;;
main ();;
