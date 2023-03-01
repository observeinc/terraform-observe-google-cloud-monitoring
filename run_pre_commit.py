#!/usr/bin/env python3
"""Runs terraform init -upgrade on all given directories which will update lock files and keep make test and terraform validate working correctly"""
import os


def pre():
    os.system(f"pre-commit run --files *")
    walker("./service", exclude=set(["__pycache__", "dashStuff", "example"]))
    walker(
        "./sample_infrastructure",
        exclude=set(["python_scripts", "rust_scripts", "images"]),
    )
    walker("./tftests", exclude=set([]))


def walker(dir_path, exclude):
    """Walk given directory and inits"""
    for (root, dirs, files) in os.walk(dir_path, topdown=True):
        dirs[:] = [d for d in dirs if d not in exclude]

        for dir_name in dirs:
            if root == dir_path:
                print(f"Root: {root}")
                print(f"Sub: {dir_name}")
                print("--------------------------------")
                os.system(f"pre-commit run --files *")


if __name__ == "__main__":
    pre()
