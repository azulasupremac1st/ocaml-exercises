let rec sum_list lst =
    match lst with
    | [] -> 0
    | x :: xs -> x + sum_list xs

let () =
    let total = sum_list [1; 2; 3; 4] in
    print_endline ("Sum is: " ^ string_of_int total)