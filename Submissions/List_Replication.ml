(*In this question we are asked to repeat each element in the list n times while maintaining order.*)

let rec repeat x n =
  if n <= 0 then [] else x :: repeat x (n - 1)

let f (n : int) (arr : int list) : int list =
  List.flatten (List.map (fun x -> repeat x n) arr)

let rec read_lines () =
  try 
      let line = read_line () in
      int_of_string line :: read_lines ()
  with
      End_of_file -> []

let () =
  match read_lines () with
  | [] -> ()
  | n :: arr -> 
      let ans = f n arr in
      List.iter (fun x -> print_int x; print_newline ()) ans
