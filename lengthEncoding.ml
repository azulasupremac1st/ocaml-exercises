let encode lst = 
let rec aux current count acc lst = 
match lst with 
| [] -> (count, current)::acc
| h::t ->
if h = current then 
aux current (count + 1) acc t
else 
aux h 1 ((count, current)::acc) t
in match lst with
| [] -> []
| h :: t -> List.rev (aux h 1 [] t)

let () =
  let input = ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"] in
  let expected = [(4, "a"); (1, "b"); (2, "c"); (2, "a"); (1, "d"); (4, "e")] in
  let result = encode input in

  let rec print_result lst =
    match lst with
    | [] -> ()
    | (count, elem) :: t ->
        Printf.printf "(%d, \"%s\") " count elem;
        print_result t
  in

  Printf.printf "Input:      ";
  List.iter (fun s -> Printf.printf "\"%s\" " s) input;
  Printf.printf "\nExpected:   ";
  print_result expected;
  Printf.printf "\nGot:        ";
  print_result result;

  if result = expected then
    Printf.printf "\n est passed!\n"
  else
    Printf.printf "\n est failed!\n"