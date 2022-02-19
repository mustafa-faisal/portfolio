#!/usr/bin/python3

import hashlib

let = "abc"

hash = str(input("Etner the password hash: "))

gen_str = [] ## list for storing the string ##

## for loop for making different combination of three letters ##

for i in let:
    for j in let:
        for k in let:
            com = i + j + k ## com means combination of letters
            gen_str.append(com) ## storing all the generated strings in a list

for gen_str in gen_str:

    gen_hash = hashlib.sha256(gen_str.encode("utf-8")).hexdigest()

    if ( gen_hash == hash ):
        print("\n\n"f"password cracked {gen_str} : {gen_hash}")
        break
    else:
        print(f"{gen_str} is unmatched..... ")