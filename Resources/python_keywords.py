import re


def get_results_from_string(string_to_check):
    # get all numbers
    numbers = re.findall(r'[0-9]+', string_to_check)

    if len(numbers) == 0:
        return 0
    elif len(numbers) == 1:
        return int(numbers[0])
    else:
        return int(numbers[1])
