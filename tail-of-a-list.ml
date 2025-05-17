let rec last lst =
  match lst with
    | [] -> None
    | [x] -> Some x
    | _ :: xs -> last xs (*Ignores the head *)
    
let () =
  let print_result = function
  | None -> print_endline "None"
  | Some x -> print_endline ("some " ^ string_of_int x)
  in 
  print_result (last [1; 2; 3]);
  print_result (last []);
  print_result (last[42]);