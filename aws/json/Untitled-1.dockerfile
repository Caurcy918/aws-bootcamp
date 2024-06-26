aws budgets create-budget \
    --account-id $ACCOUNT_ID \
    --budget file://aws/json/budget.json \
    --notifications-with-subscribers file://aws/json/budget-notifications-with-subscribers.json

aws sns subscribe \
    --topic-arn="arn:aws:sns:us-east-1:992382731651:billing-alarm" \
    --protocol=email \
    --notification-endpoint=ihouelecaurcy@gmail.com