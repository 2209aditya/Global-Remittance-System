import azure.functions as func
import json

FX_RATES = {
    "USD_INR": 83.2,
    "EUR_INR": 89.5
}

def main(req: func.HttpRequest) -> func.HttpResponse:
    data = req.get_json()
    pair = data.get("pair")
    amount = data.get("amount")

    rate = FX_RATES.get(pair)

    if not rate:
        return func.HttpResponse("Rate not found", status_code=404)

    converted = amount * rate

    return func.HttpResponse(json.dumps({
        "rate": rate,
        "convertedAmount": converted
    }), status_code=200)