import azure.functions as func
import json

BLACKLIST = ["blocked_user"]

def main(req: func.HttpRequest) -> func.HttpResponse:
    data = req.get_json()
    user = data.get("user")

    if user in BLACKLIST:
        return func.HttpResponse(
            json.dumps({"status": "REJECTED", "reason": "Sanctioned"}),
            status_code=403
        )

    return func.HttpResponse(
        json.dumps({"status": "APPROVED"}),
        status_code=200
    )