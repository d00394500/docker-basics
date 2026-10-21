import os
from faker import Faker
app_env = os.getenv("APP_ENV", "local")

# Your code here that uses the app_env variable

fake = Faker()

print(f"--- Environment: {app_env} ---")
print(f"Generated User: {fake.name()}")
print(f"Email: {fake.email()}")
print(f"City: {fake.city()}")
