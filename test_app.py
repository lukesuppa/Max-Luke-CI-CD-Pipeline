
"""Import the app variable from app.py"""
from app import app

def test_hello():

    """put the app into testing mode"""
    app.config.update({"TESTING": True,})
    client = app.test_client()
    response = client.get('/')
    assert b"<h1>Hello World</h1>" in response.data
