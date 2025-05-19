let reverse list =
let rec aux acc lst = 
match lst with
| [] -> acc
| h :: t -> aux (h::acc) t 
in 
aux [] list;; 


let () =
  let a = reverse [1; 4; 5] in
  List.iter (fun x -> Printf.printf "%d " x) a;
  print_newline ();;

