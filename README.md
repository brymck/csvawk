CSV Command Line Utilities
==========================

A collection of command-line utilities for processing CSV files. Obviously.

Dependencies
------------

* awk
* [csvquote](https://github.com/dbro/csvquote)
* zsh

csvawk
------

This simply passes a CSV file to `awk` in a way that you can

* Reference the fields in its header using brackets (e.g. `[foo]`)
* Separate fields on commas for both input and output as a default

Output specific fields:

```sh
csvawk '{ print [foo], [bar] }' file.csv
```

Output the header and records matching a specific condition:

```sh
csvawk 'NR==1 || [foo]=="bar" { print }' file.csv
```

Edit a single field and output:

```sh
csvawk 'NR>1 { [foo]="bar" } { print }' file.csv
```

Count records matching certain conditions:

```sh
csvawk '[foo]=="bar" { ++count } END { print count }' file.csv
```

Pretty print your program in `gawk` and inspect it:

```sh
csvawk -g '{ print [foo] }' file.csv -- --pretty-print
less awkprof.out
```

csvread
-------

Read specific columns from a file:

```sh
csvread foo bar file.csv
```

Read specific columns from a set of files:

```sh
csvread foo bar -- file1.csv file2.csv
```

csvheaders
----------

Dump the headers of a CSV file, one per line:

```sh
csvheaders file.csv
```
