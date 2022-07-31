from src.app import get_string


def test_dummy():
    assert 1 == 1


def test_get_string():
    expected_string = "string"
    response = get_string()
    assert response == expected_string
