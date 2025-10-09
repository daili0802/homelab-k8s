helm install step-certificates smallstep/step-certificates \
  --namespace step-ca \
  --set inject.enabled=true \
  --set inject.config.logFormat=json \
  --set ca.name="Dev MP CA" \
  --set ca.address=":9000" \
  --set ca.dns="step-certificates.step-ca.svc.cluster.local\,ca.mp.arpa\,127.0.0.1" \
  --set ca.password="$STEP_CA_PASSWORD" \
  --set ca.provisioner.name="admin" \
  --set ca.provisioner.password="$STEP_CA_PROVISIONER_PASSWORD"
