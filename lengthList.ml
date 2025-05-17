let rec lstlngth lst =
match lst with 
| [] -> 0
| _ :: xs -> 1 + lstlngth xs


let () =
  print_endline ("Length: "^ string_of_int (lstlngth[1; 2; 3]));
  print_endline ("Length: "^string_of_int (lstlngth []));