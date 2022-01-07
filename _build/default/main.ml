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

let () =
  print_endline "enter name of file: ";
  (* get user input *)
  let file_name = read_line () in
  read_contents file_name
