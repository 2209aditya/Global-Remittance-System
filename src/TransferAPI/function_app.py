import json
import azure.functions as func
from datetime import datetime

def main(req: func.HttpRequest) -> func.HttpResponse:
    try:
        data = req.get_json()

        sender = data.get("sender")
        recipient = data.get("recipient")
        amount = data.get("amount")
        currency = data.get("currency")

        # Basic validation
        if not sender or not recipient or not amount:
            return func.HttpResponse("Invalid request", status_code=400)

        # Simulate transfer processing
        transaction_id = f"TXN-{datetime.utcnow().timestamp()}"

        response = {
            "transactionId": transaction_id,
            "status": "SUCCESS",
            "amount": amount,
            "currency": currency,
            "timestamp": str(datetime.utcnow())
        }

        return func.HttpResponse(json.dumps(response), status_code=200)

    except Exception as e:
        return func.HttpResponse(str(e), status_code=500)