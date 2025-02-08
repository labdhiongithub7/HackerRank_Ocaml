(*In this question we are asked to reverse the list *)

let rec read_list () =
  try
    let n = read_int () in 
     n :: read_list ()
     with End_of_file -> []
     
 let my_list = List.rev(read_list());;
 
 let rec print_list l=
   match l with 
   |[] ->()
   | x::y ->
          Printf.printf "%d\n" x;
          print_list y
  
  let () = print_list my_list;;
  