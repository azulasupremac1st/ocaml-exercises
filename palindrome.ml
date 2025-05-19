let reverse list =
let rec aux acc lst = 
match lst with
| [] -> acc
| h :: t -> aux (h::acc) t 
in 
aux [] list;; 

let is_palindrome lst = 
lst = reverse lst;;

let () =
  let a = reverse [1; 4; 5] in
  List.iter (fun x -> Printf.printf "%d " x) a;
  print_newline ();;
  
  let b = is_palindrome [2; 4; 7];;
  Printf.printf "It is %b\n" b;;
