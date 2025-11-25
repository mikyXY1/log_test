#!/usr/bin/python3

#Kolik hlášek každého typu je v logu

from collections import Counter
import re

with open("server_log.txt", "r") as f:
    lines = f.readlines()

typy = []

for line in lines:
    match = re.search(r"\] (INFO|WARNING|ERROR)", line)
    if match:
        typy.append(match.group(1))

pocty = Counter(typy)

print("Počet hlášek podle typu:")
for typ, pocet in pocty.items():
    print(f"{typ}: {pocet}")

#Seznam všech uživatelů, kteří se přihlásili

with open("server_log.txt", "r") as f:
    lines = f.readlines()

uzivatele = []

for line in lines:
    match = re.search(r"User '([^']+)' logged in", line)
    if match:
        uzivatele.append(match.group(1))

print("Seznam všech uživatelů, kteří se přihlásili:")
for u in uzivatele:
    print(u)