#!/bin/bash
set -euo pipefail

aws sns delete-topic --topic-arn arn:aws:sns:us-east-2:589354718744:resume-mailer-skaleel --region us-east-2 --no-cli-pager

aws ssm delete-parameter --name /itmo-444/gemini-api-key --region us-east-2 --no-cli-pager

echo "Project SNS topic and SSM parameter deleted."
