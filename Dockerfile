# DynamoDB in docker 
# http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html
 
FROM openjdk:8

RUN wget http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz -q -O - | tar -xz

EXPOSE 8000
ENTRYPOINT ["java", "-jar", "DynamoDBLocal.jar"]
