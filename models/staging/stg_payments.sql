SELECT 
  orderid AS order_id,
  paymentmethod AS payment_method,
  status,
  {{ cents_to_dollars('amount') }} AS amount,
  created AS payment_date
FROM {{ source('stripe','payment') }}