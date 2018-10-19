import unittest
import requests

class TestAppUsingRequests(unittest.TestCase):
    def test_hello_world(self):
        response = requests.get('http://flask-app:5000')
        print(response.text)
        self.assertEqual(response.text, "Hey, we have Flask in a Docker container! I told you it would work!")

if __name__ == "__main__":
    unittest.main()
