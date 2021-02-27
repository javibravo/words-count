from lib.words_count import WordsCount
import argparse
import json


parser = argparse.ArgumentParser()
parser.add_argument('-f', '--files', nargs='*', help='Files path to read', required=False, default=[])
parser.add_argument('-n', '--number-of-words', help='Number of words to group', required=False, type=int, default=3)
parser.add_argument('-t', '--top', help='Max number of groups of words to output', required=False, type=int, default=100)
args = parser.parse_args()


if __name__ == "__main__":
    words_counter = WordsCount(file_path_list=args.files, chunk_size=args.number_of_words, top_number=args.top)
    words_counter.count()

    print(json.dumps(words_counter.result, sort_keys=False, indent=4))
