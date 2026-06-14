from app import app


def test_home():
    client = app.test_client()
    response = client.get("/")
    assert response.status_code == 200
    assert b"Azure CI/CD Flask ML App is running!" in response.data


def test_predict():
    client = app.test_client()
    payload = {
        "CHAS": {"0": 0},
        "RM": {"0": 6.575},
        "TAX": {"0": 296.0},
        "PTRATIO": {"0": 15.3},
        "B": {"0": 396.9},
        "LSTAT": {"0": 4.98}
    }
    response = client.post("/predict", json=payload)
    assert response.status_code == 200
    assert "prediction" in response.get_json()
