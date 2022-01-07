(* basis loop *)
let read_contents (file_name: string): unit =
    let in_channel = open_in file_name in
    try
        while true do
        let line = input_line in_channel in
        try
            print_endline line
        with Not_found -> ()
        done
    with End_of_file -> close_in in_channel
;;

let credit (budget: float) (amount: float): float =
  budget +. amount
;;

let debit (budget: float) (amount: float): float =
  budget -. amount
;;

let slurp_channel channel =
  let buffer_size = 4096 in
  let buffer = Buffer.create buffer_size in
  let string = Buffer.create buffer_size in
  let chars_read = ref 1 in
  while !chars_read <> 0 do
    chars_read := input channel string 0 buffer_size;
    Buffer.add_substring buffer string 0 !chars_read
  done;
  Buffer.contents buffer
;;


let slurp_file (filename: string): string =
  let channel = open_in_bin filename in
  let result =
    try slurp_channel channel
;;

let parse (budget: float) (filename: string): float =
  let contents = slurp_file filename
;;

let () =
  (* get budget amount *)
  let budget = read_float () in

  (* csv that contains transactions *)
  print_endline "enter name of file: ";
  let file_name = read_line () in

  (* do the fancy *)
  parse file_name budget
