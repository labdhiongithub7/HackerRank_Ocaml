(* In this question We are supposed to print "Hello World"  amount of times.  *)

let rec print_hello n=
 if n>0 then (
  print_endline "Hello World";
  print_hello (n-1)
 );;
 
let ()=
  let n=read_int () in 
  print_hello n
 