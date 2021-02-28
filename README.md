# Word Count

CLI tool for that outputs the N (N by default 100) most common n-word (n by default is 3) sequence in text, along with a count of how many times each occurred in the text.

The CLI can get the text on 'stdin' with default params:
```
>$ cat text_file.txt | word-count
...
```
 
Or using positional arguments:
```
>$ word-count --files text_file.txt
...
>$ word-count --files text_file.txt --number-of-words 4 --top 5
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

## Development

TODO