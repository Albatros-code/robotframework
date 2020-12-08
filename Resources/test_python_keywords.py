from unittest import TestCase
from Resources.python_keywords import get_results_from_string


class TestPythonKeywords(TestCase):
    def test_get_first_number(self):
        test_string = "48 results on page"
        val = get_results_from_string(test_string)
        self.assertEqual(val, 48)

    def test_get_second_number(self):
        test_string = "1 - 48 of 60 results on page"
        val = get_results_from_string(test_string)
        self.assertEqual(val, 48)

    def test_get_no_number(self):
        test_string = "results on page"
        val = get_results_from_string(test_string)
        self.assertEqual(val, 0)
