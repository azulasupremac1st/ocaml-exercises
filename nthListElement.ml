let rec nth lst n =
  match lst with 
  | [] -> None
  | x :: xs ->
    if n<0 then None
    else if n=0 then Some x
    else nth xs (n-1)
    

let () = 
  let nums = [10; 20; 30; 40] in 
    match nth nums 2 with
    | Some x -> print_endline ("Found: " ^ string_of_int x)
    | None -> print_endline "Not found"