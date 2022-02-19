#!/usr/bin/python3
import hashlib

words = "bba"
gen_hash  = hashlib.sha256(words.encode("utf-8")).hexdigest()

print(gen_hash)
