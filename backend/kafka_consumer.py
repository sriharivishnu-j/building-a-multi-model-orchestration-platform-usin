from kafka import KafkaConsumer
import logging

consumer = KafkaConsumer('topic_name', bootstrap_servers=['localhost:9092'])
logger = logging.getLogger("kafka")

for message in consumer:
    logger.info(f"Received message: {message.value}")
    # Process the message
