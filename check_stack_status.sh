STACK_NAME="app-sam-rec"

while true; do
    echo "Checking status of stack: $STACK_NAME"
    aws cloudformation describe-stacks --stack-name $STACK_NAME --query "Stacks[0].StackStatus" --output text
    sleep 5
done