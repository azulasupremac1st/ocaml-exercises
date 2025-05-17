let rec lasttwo lst =
  match lst with 
  | [] | [_] -> None
  | [x; y] -> Some (x,y)
  | _ :: z -> lasttwo z;;
  
let () =
  let print_result = function
   | None -> print_endline "None"
   | Some (x,y) -> print_endline ("Some " ^ string_of_int x ^ " "^ string_of_int y)
   
   in 
   print_result (lasttwo [1; 2; 3]);
   print_result (lasttwo []);
   print_result (lasttwo [222]);
   print_result (lasttwo [22; 45]);
   print_result (lasttwo [90; 23; 2; 3; 4; 5; 6; 10]);