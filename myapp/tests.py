from django.test import TestCase

from django.urls import reverse

class HomePageTest(TestCase):
    def test_home_page_status_code(self):
        response = self.client.get('/')
        self.assertEqual(response.status_code, 200)

    # def test_home_page_contains_navbar(self):
    #     response = self.client.get('/')
    #     self.assertContains(response, '<nav>')

    def test_home_page_contains_paragraph(self):
        response = self.client.get('/')
        self.assertContains(response, '<p>')


