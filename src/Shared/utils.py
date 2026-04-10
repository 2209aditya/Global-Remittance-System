def generate_txn_id():
    import time
    return f"TXN-{int(time.time())}"