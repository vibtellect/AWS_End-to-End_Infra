# AWS Data Processing Infrastructure

**Kurze Übersicht (Deutsch)**

Dieses Projekt demonstriert, wie Sie mit moderner AWS-Infrastruktur und Terraform eine sichere, skalierbare und automatisierte Datenverarbeitung aufbauen können. Es eignet sich ideal als Vorlage für Unternehmen, die Wert auf Sicherheit, Effizienz und Automatisierung legen.

## Features
- **VPC & Subnetze:** Isoliertes Netzwerk für maximale Sicherheit
- **S3 Storage:** Versionierte Ablage eingehender und verarbeiteter Dateien
- **Lambda Serverless:** Automatische Verarbeitung von Dateien ohne Serverbetrieb
- **Sicher & Skalierbar:** Zugriff auf S3 aus privaten Subnetzen, IAM Least Privilege

## Schneller Einstieg
1. Voraussetzungen: AWS CLI, Terraform
2. `terraform init && terraform apply`
3. Datei nach `input/` im S3-Bucket hochladen
4. Lambda-Funktion manuell oder automatisiert ausführen

## Warum dieses Projekt?
- Modular & erweiterbar
- Best Practices für Sicherheit und Cloud
- Ideal für Unternehmen, die Cloud-Lösungen suchen

---

[Zurück zur englischen Version](README.md)
