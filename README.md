# Word Count

CLI tool for that outputs the N (N by default 100) most common n-word (n by default is 3) sequence in text, along with a count of how many times each occurred in the text.

The CLI can get the text on 'stdin' with default params:
```
>$ cat text_file.txt | words-count
...
```
 
Or using positional arguments:
```
>$ words-count --files text_file.txt
...
>$ words-count --files text_file.txt --number-of-words 4 --top 5
...
```

### Important

- It is **not** case sensitive (e.g. “I love\nsandwiches.” is treated the same as "(I LOVE SANDWICHES!!)")
- When more than 1 file are passed as argument, each file is processed independently but the series of words are counted together.

## How to install

Install the cli using `pip`

```
>$ pip intall words-count
...
```

Then, it will be available to use:

```
>$ words-count --help
usage: words-count [-h] [-f [FILES ...]] [-n NUMBER_OF_WORDS] [-t TOP]

CLI tool for that outputs the N (N by default 100) most common n-word (n by default is 3) sequence in text, along with a count of how many times each
occurred in the text.

optional arguments:
  -h, --help            show this help message and exit
  -f [FILES ...], --files [FILES ...]
                        Files path to read
  -n NUMBER_OF_WORDS, --number-of-words NUMBER_OF_WORDS
                        Number of words to group
  -t TOP, --top TOP     Max number of groups of words to output
```

### Examples of use

Process to `stdin`:
```
>$ cat pg2009.txt | words-count
{
    "of the same": 320,
    "the same species": 126,
    "conditions of life": 125,
    "in the same": 116,
    "of natural selection": 107,
    "from each other": 103,
    "species of the": 98,
    "on the other": 89,
    "the other hand": 81,
    "the case of": 78,
    "the theory of": 75,
...
```

Use arguments for adjusting the options:
```
words-count --files pg2009.txt --number-of-words 6 --top 5
{
    "the individuals of the same species": 31,
    "the species of the same genus": 19,
    "we can understand how it is": 13,
    "can understand how it is that": 13,
    "the project gutenberg literary archive foundation": 13
}
```

Process multiple files:
```
words-count --files pg2009.txt pg2009.txt --number-of-words 6 --top 5
{
    "the individuals of the same species": 62,
    "the species of the same genus": 38,
    "we can understand how it is": 26,
    "can understand how it is that": 26,
    "the project gutenberg literary archive foundation": 26
}
```

## Benchmark

The stats showed bellow has been obtained running the application on a laptop in normal conditions, having other applications opened and running.

##### Hardware Specs
* MacBook Pro 
* macOS Catalina
* 3.5 GHz Dual-Core Intel Core i7
* 16 GB 2133 MHz LPDDR3

##### Files 
* pg2009.txt - http://www.gutenberg.org/cache/epub/2009/pg2009.txt
* enwik8 - http://mattmahoney.net/dc/textdata.html
* enwik9 - http://mattmahoney.net/dc/textdata.html


```
>$ ls -lh
total 2160552
-rw-r--r--@ 1 user  1113146471    95M 28 Feb 10:52 enwik8
-rw-r--r--@ 1 user  1113146471   954M  1 Jun  2011 enwik9
-rw-r--r--  1 user  1113146471   1.2M 28 Feb 10:43 pg2009.txt
```

```
>$ wc -l *
  1128023 enwik8
 13147025 enwik9
    21648 pg2009.txt
 14296696 total
```

#### Stats

```
>$ time cat pg2009.txt| words-count
{
    "of the same": 320,
    "the same species": 126,
    "conditions of life": 125,
    ...
    "from the same": 33,
    "believe that the": 33
}
cat pg2009.txt  0.00s user 0.01s system 1% cpu 0.712 total
words-count  0.40s user 0.35s system 98% cpu 0.770 total
```

```
>$ time cat enwik8| words-count
{
    "revision page page": 12346,
    "the united states": 6077,
    "one of the": 5948,
    ...
    "well as the": 741,
    "that it is": 727
}
cat enwik8  0.01s user 0.15s system 0% cpu 26.574 total
words-count  28.31s user 1.35s system 97% cpu 30.367 total
```

```
>$ time cat enwik9 | words-count
{
    "revision page page": 243425,
    "the age of": 115681,
    "under the age": 108814,
    ...
    "householder with no": 36353,
    "households are made": 36353
}
cat enwik9  0.08s user 1.32s system 0% cpu 5:00.42 total
words-count  303.05s user 48.10s system 92% cpu 6:18.84 total
```

## CI/CD

The tool automatically tested and released (published to PyPi) using GitHub Actions.
Configuration in [.github/workflows](.github/workflows)
