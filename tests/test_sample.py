from pythonproject import project_design


def test_example(some_fixture: str) -> None:
    assert some_fixture == "a"


def test_code() -> None:
    assert project_design()
