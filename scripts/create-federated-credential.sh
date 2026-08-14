#!/usr/bin/env bash
set -euo pipefail

if [ -z "${1-}" ]; then
  echo "Usage: $0 <APP_ID> [SUBJECT]"
  echo "Example SUBJECT (repo & branch wildcard): repo:azure-devsecops-rajan/gha-tf-practice-140826:ref:refs/heads/*"
  exit 1
fi

APP_ID="$1"
SUBJECT="${2:-repo:azure-devsecops-rajan/gha-tf-practice-140826:ref:refs/heads/*}"

jq_payload=$(cat <<EOF
{
  "name": "github-oidc-repo-wildcard",
  "issuer": "https://token.actions.githubusercontent.com",
  "subject": "$SUBJECT",
  "audiences": ["api://AzureADTokenExchange"]
}
EOF
)

echo "Creating federated credential for app id: $APP_ID"

ez ad app federated-credential create --id "$APP_ID" --parameters "$jq_payload"

echo "Done. Verify in Azure Portal: App registrations -> Your App -> Federated credentials"
