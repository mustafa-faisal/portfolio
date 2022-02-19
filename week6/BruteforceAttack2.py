#!/usr/bin/python3 
      
import hashlib
import random

letters = "abcdefghijklmnopqrstuvwxyz"

hash = str(input("Enter the password hash: "))

gen_str = 0
gen_hash = 0

print("Cracking...")
while ( hash != gen_hash ):
    first_let = random.choice(letters)
    sec_let = random.choice(letters)
    thir_let = random.choice(letters)

    gen_str = first_let + sec_let + thir_let

    gen_hash = hashlib.sha256(gen_str.encode("utf-8")).hexdigest()

print(f"password cracked. password is {gen_str} : {gen_hash}")