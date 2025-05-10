import json
import boto3
import os

def lambda_handler(event, context):
    # S3-Bucket und Object-Key aus dem Event holen
    bucket = event['Records'][0]['s3']['bucket']['name']
    key = event['Records'][0]['s3']['object']['key']
    print("Lambda gestartet")
    # S3-Client initialisieren
    s3 = boto3.client('s3')
    
    # Objekt verarbeiten (hier kopieren wir es einfach an einen neuen Ort)
    output_key = key.replace('input/', 'processed/')
    
    # Objekt aus S3 holen
    response = s3.get_object(Bucket=bucket, Key=key)
    file_content = response['Body'].read().decode('utf-8')
    print(response)
    # Einfache Verarbeitung - in Großbuchstaben umwandeln
    processed_content = file_content.upper()
    
    # Verarbeitete Datei hochladen
    s3.put_object(
        Bucket=bucket,
        Key=output_key,
        Body=processed_content
    )
    
    print(f"Datei {key} wurde verarbeitet und als {output_key} gespeichert")
    
    return {
        'statusCode': 200,
        'body': json.dumps(f'Successfully processed {key} to {output_key}')
    }
