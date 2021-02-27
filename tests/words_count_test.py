import pytest
from lib.words_count import WordsCount

@pytest.mark.parametrize(
    "line, words",
    [
        ("this is a basic text", ['this', 'is', 'a', 'basic', 'text']),
        ("text, with! :punctuations - let's test", ['text', 'with', 'punctuations', 'lets', 'test']),
        ("Case DON'T Matter", ['case', 'dont', 'matter']),
        ("  start and end with blanks     ", ['start', 'and', 'end', 'with', 'blanks']),
        ("...... * *     $$", []),
        ("\n", []),
        ("", []),

    ]
)
def test_clean_and_split_line(line, words):
    assert WordsCount.clean_and_split_lie(line) == words


def test_process_sequences_of_words_3():
    expected_output = {
        'project gutenberg ebook': 3,
        'the project gutenberg': 2,
        'on the origin': 4,
        'the origin of': 4,
        'origin of species': 4,
        'gutenberg ebook of': 2,
        'ebook of on': 2,
        'of on the': 2,
        'of species by': 2,
        'species by charles': 2,
        'by charles darwin': 2,
        'charles darwin the': 1,
        'darwin the project': 1,
        'charles darwin title': 1,
        'darwin title on': 1,
        'title on the': 1,
        'of species 6th': 1,
        'species 6th edition': 1,
        '6th edition release': 1,
        'edition release date': 1,
        'release date december': 1,
        'date december 1999': 1,
        'december 1999 etext': 1,
        '1999 etext 2009': 1,
        'etext 2009 posting': 1,
        '2009 posting date': 1,
        'posting date november': 1,
        'date november 23': 1,
        'november 23 2009': 1,
        '23 2009 language': 1,
        '2009 language english': 1,
        'language english start': 1,
        'english start of': 1,
        'start of this': 1,
        'of this project': 1,
        'this project gutenberg': 1,
        'gutenberg ebook on': 1,
        'ebook on the': 1
    }

    words_count_three = WordsCount('./tests/files/sample_1.txt')
    words_count_three.count()

    assert words_count_three.result == expected_output
