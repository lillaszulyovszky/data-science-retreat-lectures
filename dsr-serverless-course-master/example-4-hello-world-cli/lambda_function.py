
def lambda_handler(event, context):
	print('inside the lambda function cli')
	print("value1 = ",  event['key1'])
	return event['key1']
