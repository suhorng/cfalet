structure Main =
struct

(*  main : string * string list -> OS.Process.status *)
fun main (prog_name, args) =
  ( CFAK.test (NCL.normalizeK (Parser0.parse (TextIO.openIn "test.sml"), NCL.id));
    OS.Process.success)

fun mainWrapped () =
  main (CommandLine.name (), CommandLine.arguments ())

end
