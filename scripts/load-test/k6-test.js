import http from 'k6/http';
import { check, sleep } from 'k6';

export let options = {
  vus: 50,          // virtual users
  duration: '30s',  // test duration
};

export default function () {

  let payload = JSON.stringify({
    sender: "user1",
    receiver: "user2",
    amount: 100,
    currency: "USD"
  });

  let params = {
    headers: {
      'Content-Type': 'application/json',
    },
  };

  let res = http.post('https://your-api-endpoint/transfer', payload, params);

  check(res, {
    'status is 200': (r) => r.status === 200,
    'response time < 500ms': (r) => r.timings.duration < 500,
  });

  sleep(1);
}