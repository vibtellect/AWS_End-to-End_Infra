# 🚀 AWS Data Processing Infrastructure

**Moderne, sichere & automatisierte AWS Cloud-Lösung – optimal für Ihr Unternehmen.**

---

> 🇬🇧 [Read this in English](README.md)

---

## 🌟 Warum dieses Projekt?
- **Best Practices:** Sichere VPC, Public/Private Subnetze, S3 mit Versionierung, Serverless Lambda
- **Automatisiert & Skalierbar:** Infrastruktur als Code (Terraform) – schnell, wiederholbar, zuverlässig
- **Geschäftsnutzen:** Modular, erweiterbar, bereit für den Praxiseinsatz

## 🛠️ Technische Umsetzung
- **Netzwerk:** AWS VPC mit isolierten Subnetzen, S3 VPC Endpoint für privaten Zugriff
- **Speicher:** S3-Bucket mit Versionierung, `input/` und `processed/` Ordner
- **Compute:** Lambda (Python), verarbeitet Dateien von `input/` nach `processed/`
- **Sicherheit:** IAM Least Privilege, keine öffentliche Lambda, Logging in CloudWatch

## 🚦 Schneller Einstieg
1. **Voraussetzungen:** AWS CLI, Terraform
2. **Infrastruktur bereitstellen:**
   ```bash
   terraform init
   terraform apply
   ```
3. **Datei hochladen:** Textdatei in den `input/`-Ordner im S3-Bucket legen
4. **Lambda ausführen:**
   - Manuell per AWS CLI:
     ```bash
     aws lambda invoke --function-name <lambda_name> --cli-binary-format raw-in-base64-out --payload '{"Records":[{"s3":{"bucket":{"name":"<bucket_name>"},"object":{"key":"input/test.txt"}}}]}' output.json
     ```
   - Oder automatisch (falls S3-Trigger aktiviert)
5. **Ergebnis prüfen:** Verarbeitete Datei erscheint in `processed/`, Logs in CloudWatch

## 🧑‍💻 So funktioniert's
1. **Upload:** Datei wird in S3 `input/` geladen
2. **Verarbeitung:** Lambda liest, verarbeitet (z.B. Großbuchstaben), speichert in `processed/`
3. **Sicherheit:** Alle Ressourcen privat, S3-Traffic bleibt intern dank VPC Endpoint

---

**Sie suchen einen Freelancer für sichere, moderne AWS-Lösungen?**
Dieses Projekt ist der perfekte Einstieg für Ihr Cloud-Vorhaben.
