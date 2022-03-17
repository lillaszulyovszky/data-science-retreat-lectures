from locust import HttpUser, between, task

class WebsiteUser(HttpUser):
    wait_time = between(2, 4)

    @task
    def attempt(self):
        self.client.get("/predict/?sepallength=6.3&sepalwidth=2.5&petallength=4.9&petalwidth=1.5")
