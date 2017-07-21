CSV Command Line Utilities
==========================

A collection of command-line utilities for processing CSV files. Obviously.

Dependencies
------------

* GNU AWK
* Perl

csvawk
------

This simply passes a CSV file to AWK. It lets you:

* Reference the fields in its header as normal AWK variables (e.g. `$foo`).
  Note that invalid characters are condensed into an underscore (`_`).

Output specific fields:

```sh
csvawk '{ print $foo, $bar }' file.csv
```

Output the header and records matching a specific condition:

```sh
csvawk 'NR==1 || $foo=="bar" { print }' file.csv
```

Edit a single field and output:

```sh
csvawk 'NR>1 { $foo="bar" } { print }' file.csv
```

Count records matching certain conditions:

```sh
csvawk '$foo=="bar" { ++count } END { print count }' file.csv
```

Pretty print your program in `gawk` and inspect it:

```sh
csvawk -g '{ print $foo }' file.csv -- --pretty-print
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
