SHELL:=/usr/bin/env bash -O extglob -O globstar -o pipefail

# Docker
DOCKER_IMAGE_NAME:=words-count

.PHONY: docker-build
docker-build:
	@echo '..building $(DOCKER_IMAGE_NAME) image..'
	docker build --rm -t $(DOCKER_IMAGE_NAME) .

.PHONY: docker-run
docker-run:
	@echo '..starting docker container..'
	docker run --interactive --tty  $(DOCKER_IMAGE_NAME) bash || true

.PHONY: tests
tests:
	@echo '..starting docker container..'
	docker run --interactive --tty  $(DOCKER_IMAGE_NAME) bash '-c' 'python -m pytest -vvv'



----------------------------------

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
    "some of the": 73,
    "parts of the": 72,
    "of the world": 72,
    "through natural selection": 70,
    "with respect to": 69,
    "in the case": 67,
    "it may be": 65,
    "the species of": 65,
    "the inhabitants of": 65,
    "of the species": 64,
    "that of the": 62,
    "forms of life": 61,
    "the same genus": 61,
    "individuals of the": 60,
    "as far as": 58,
    "the number of": 56,
    "those of the": 55,
    "part of the": 55,
    "the principle of": 53,
    "the nature of": 52,
    "to each other": 52,
    "on the same": 51,
    "in this case": 51,
    "to the same": 50,
    "nature of the": 50,
    "more or less": 50,
    "at the same": 50,
    "as in the": 49,
    "in regard to": 49,
    "and in the": 47,
    "it has been": 47,
    "a state of": 47,
    "the individuals of": 47,
    "one of the": 47,
    "nearly the same": 47,
    "in which the": 47,
    "inhabitants of the": 46,
    "the amount of": 46,
    "state of nature": 46,
    "each other in": 46,
    "we can understand": 46,
    "are descended from": 45,
    "from a common": 45,
    "might have been": 44,
    "will have been": 44,
    "the conditions of": 43,
    "by natural selection": 43,
    "to have been": 42,
    "animals and plants": 42,
    "and of the": 42,
    "in a state": 42,
    "the same manner": 42,
    "which have been": 42,
    "and on the": 42,
    "to believe that": 42,
    "respect to the": 41,
    "the same time": 41,
    "would have been": 41,
    "we have seen": 41,
    "as well as": 40,
    "there is no": 40,
    "in some degree": 40,
    "the united states": 40,
    "varieties of the": 40,
    "members of the": 40,
    "on the theory": 40,
    "it would be": 40,
    "each other and": 39,
    "of the most": 39,
    "belonging to the": 39,
    "that it is": 38,
    "could be given": 38,
    "it is that": 38,
    "in order to": 37,
    "theory of natural": 37,
    "the present day": 36,
    "the sterility of": 36,
    "of life and": 36,
    "it is not": 36,
    "species belonging to": 36,
    "the process of": 36,
    "the power of": 35,
    "reason to believe": 35,
    "in relation to": 34,
    "at the present": 33,
    "and this is": 33,
    "habits of life": 33,
    "from the same": 33,
    "believe that the": 33
}
words-count --files pg2009.txt  0.41s user 0.36s system 92% cpu 0.838 total

➜  samples time cat pg2009.txt| words-count
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
    "some of the": 73,
    "parts of the": 72,
    "of the world": 72,
    "through natural selection": 70,
    "with respect to": 69,
    "in the case": 67,
    "it may be": 65,
    "the species of": 65,
    "the inhabitants of": 65,
    "of the species": 64,
    "that of the": 62,
    "forms of life": 61,
    "the same genus": 61,
    "individuals of the": 60,
    "as far as": 58,
    "the number of": 56,
    "those of the": 55,
    "part of the": 55,
    "the principle of": 53,
    "the nature of": 52,
    "to each other": 52,
    "on the same": 51,
    "in this case": 51,
    "to the same": 50,
    "nature of the": 50,
    "more or less": 50,
    "at the same": 50,
    "as in the": 49,
    "in regard to": 49,
    "and in the": 47,
    "it has been": 47,
    "a state of": 47,
    "the individuals of": 47,
    "one of the": 47,
    "nearly the same": 47,
    "in which the": 47,
    "inhabitants of the": 46,
    "the amount of": 46,
    "state of nature": 46,
    "each other in": 46,
    "we can understand": 46,
    "are descended from": 45,
    "from a common": 45,
    "might have been": 44,
    "will have been": 44,
    "the conditions of": 43,
    "by natural selection": 43,
    "to have been": 42,
    "animals and plants": 42,
    "and of the": 42,
    "in a state": 42,
    "the same manner": 42,
    "which have been": 42,
    "and on the": 42,
    "to believe that": 42,
    "respect to the": 41,
    "the same time": 41,
    "would have been": 41,
    "we have seen": 41,
    "as well as": 40,
    "there is no": 40,
    "in some degree": 40,
    "the united states": 40,
    "varieties of the": 40,
    "members of the": 40,
    "on the theory": 40,
    "it would be": 40,
    "each other and": 39,
    "of the most": 39,
    "belonging to the": 39,
    "that it is": 38,
    "could be given": 38,
    "it is that": 38,
    "in order to": 37,
    "theory of natural": 37,
    "the present day": 36,
    "the sterility of": 36,
    "of life and": 36,
    "it is not": 36,
    "species belonging to": 36,
    "the process of": 36,
    "the power of": 35,
    "reason to believe": 35,
    "in relation to": 34,
    "at the present": 33,
    "and this is": 33,
    "habits of life": 33,
    "from the same": 33,
    "believe that the": 33
}
cat pg2009.txt  0.00s user 0.01s system 1% cpu 0.712 total
words-count  0.40s user 0.35s system 98% cpu 0.770 total



➜  samples time cat enwik8| words-count
{
    "revision page page": 12346,
    "the united states": 6077,
    "one of the": 5948,
    "as well as": 3995,
    "part of the": 3133,
    "in the united": 3067,
    "of the united": 2845,
    "a number of": 2656,
    "the end of": 2426,
    "such as the": 2299,
    "zhtext revision page": 2206,
    "in order to": 2014,
    "known as the": 1948,
    "the use of": 1822,
    "end of the": 1749,
    "the united kingdom": 1570,
    "some of the": 1542,
    "at the time": 1519,
    "due to the": 1491,
    "most of the": 1487,
    "referred to as": 1474,
    "of the most": 1432,
    "there is a": 1364,
    "text revision page": 1348,
    "world war ii": 1342,
    "as a result": 1306,
    "the number of": 1304,
    "to be a": 1297,
    "members of the": 1297,
    "in the world": 1285,
    "according to the": 1256,
    "there is no": 1233,
    "in the early": 1205,
    "based on the": 1203,
    "the university of": 1199,
    "to be the": 1163,
    "is one of": 1159,
    "history of the": 1131,
    "the name of": 1126,
    "the fact that": 1104,
    "of the first": 1104,
    "member of the": 1090,
    "the history of": 1086,
    "many of the": 1070,
    "of the world": 1021,
    "a series of": 1019,
    "in which the": 1005,
    "also known as": 996,
    "the battle of": 993,
    "the age of": 991,
    "it is a": 990,
    "in addition to": 964,
    "the development of": 961,
    "was the first": 958,
    "in the late": 950,
    "at the end": 934,
    "it is not": 923,
    "president of the": 917,
    "the rest of": 909,
    "as part of": 905,
    "in the us": 874,
    "for example the": 874,
    "it is the": 866,
    "to have been": 857,
    "a member of": 857,
    "much of the": 857,
    "in the same": 852,
    "the soviet union": 843,
    "the time of": 838,
    "because of the": 838,
    "at the same": 837,
    "the same time": 835,
    "the house of": 834,
    "on the other": 832,
    "contributor ipconversion scriptip": 819,
    "ipconversion scriptip contributor": 819,
    "scriptip contributor minor": 819,
    "contributor minor commentautomated": 819,
    "minor commentautomated conversioncomment": 819,
    "commentautomated conversioncomment text": 819,
    "parts of the": 819,
    "use of the": 817,
    "conversioncomment text xmlspacepreserveredirect": 813,
    "the book of": 803,
    "and in the": 798,
    "the form of": 789,
    "out of the": 785,
    "it has been": 785,
    "the beginning of": 782,
    "a variety of": 777,
    "version of the": 775,
    "it is also": 767,
    "in terms of": 753,
    "was one of": 753,
    "of the city": 752,
    "can be used": 748,
    "in the first": 746,
    "a result of": 744,
    "well as the": 741,
    "that it is": 727
}
cat enwik8  0.01s user 0.15s system 0% cpu 26.574 total
words-count  28.31s user 1.35s system 97% cpu 30.367 total


time cat enwik9 | words-count
{
    "revision page page": 243425,
    "the age of": 115681,
    "under the age": 108814,
    "age of 18": 108810,
    "the united states": 90285,
    "of the population": 75609,
    "years of age": 74062,
    "of age or": 73117,
    "age or older": 73036,
    "65 years of": 73025,
    "or older the": 73016,
    "for every 100": 72981,
    "every 100 females": 72955,
    "the median income": 72477,
    "income for a": 72471,
    "median income for": 72466,
    "below the poverty": 71715,
    "the poverty line": 71701,
    "as of the": 70166,
    "of it is": 62261,
    "one of the": 52485,
    "miampsup2 of it": 52072,
    "according to the": 43572,
    "out of the": 42501,
    "to the united": 40146,
    "the population is": 39488,
    "made up of": 38359,
    "two or more": 37482,
    "has a total": 36909,
    "total area of": 36752,
    "a total area": 36678,
    "the population density": 36663,
    "at an average": 36657,
    "of the total": 36632,
    "makeup of the": 36613,
    "and the average": 36588,
    "from 45 to": 36554,
    "of individuals and": 36544,
    "to 64 and": 36543,
    "children under the": 36542,
    "the median age": 36535,
    "from 25 to": 36534,
    "average density of": 36531,
    "are made up": 36523,
    "the racial makeup": 36514,
    "an average density": 36513,
    "average household size": 36511,
    "45 to 64": 36511,
    "18 to 24": 36510,
    "25 to 44": 36509,
    "racial makeup of": 36508,
    "from 18 to": 36508,
    "the average household": 36507,
    "units at an": 36504,
    "housing units at": 36503,
    "18 and over": 36501,
    "the average family": 36499,
    "out of which": 36498,
    "average family size": 36496,
    "couples living together": 36490,
    "age 18 and": 36488,
    "of all households": 36486,
    "up of individuals": 36486,
    "older the median": 36486,
    "males for every": 36485,
    "living alone who": 36482,
    "and over there": 36482,
    "100 females there": 36481,
    "someone living alone": 36480,
    "older the average": 36475,
    "living with them": 36473,
    "population density is": 36470,
    "females age 18": 36465,
    "of 18 living": 36465,
    "per capita income": 36460,
    "years for every": 36459,
    "100 females age": 36459,
    "18 living with": 36457,
    "the population and": 36454,
    "residing in the": 36449,
    "of 2000 there": 36419,
    "households out of": 36395,
    "is 65 years": 36388,
    "family size is": 36385,
    "median age is": 36382,
    "household size is": 36381,
    "families residing in": 36381,
    "who is 65": 36380,
    "alone who is": 36377,
    "have children under": 36371,
    "females there are": 36367,
    "over there are": 36367,
    "census bureau the": 36365,
    "are 65 years": 36365,
    "a female householder": 36355,
    "have someone living": 36355,
    "female householder with": 36354,
    "with no husband": 36354,
    "householder with no": 36353,
    "households are made": 36353
}
cat enwik9  0.08s user 1.32s system 0% cpu 5:00.42 total
words-count  303.05s user 48.10s system 92% cpu 6:18.84 total

