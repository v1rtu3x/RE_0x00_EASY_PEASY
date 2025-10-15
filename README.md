# easy_peasy

A small C program with a Makefile and simple test runner.

---

## Project Layout

.
├── Makefile

├── test/

├── run_test.sh

├── src/

│ └── easy_peasy.c


yaml
Copy code

---

## Prerequisites

- A POSIX-compatible shell (e.g., `bash`)
- `gcc` (or override with `CC=clang`)
- Optional: `clang-format` (for `make format`)

---

## Build

```sh
make              # builds ./easy_peasy
```

You can override variables, for example:

```sh
make CC=clang CFLAGS='-O2 -g -Wall'
```

## Run
```sh
make run          # runs ./easy_peasy
# or
./easy_peasy
```

## Test
A simple test harness is provided:

```sh
run_test.sh     # expects the binary at ./easy_peasy, which is where the Makefile places it.
```

## Clean
```sh
make clean        # removes objects, binary, and dist/
```

## Notes
The Makefile compiles src/easy_peasy.c into src/easy_peasy.o and links the final binary ./easy_peasy.

