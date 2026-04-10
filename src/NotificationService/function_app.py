import azure.functions as func
import json

def main(req: func.HttpRequest) -> func.HttpResponse:
    data = req.get_json()
    email = data.get("email")
    message = data.get("message")

    print(f"Sending notification to {email}: {message}")

    return func.HttpResponse(
        json.dumps({"status": "Notification Sent"}),
        status_code=200
    )