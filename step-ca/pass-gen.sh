# Generate passwords
export STEP_CA_PASSWORD=$(openssl rand -base64 32)
export STEP_CA_PROVISIONER_PASSWORD=$(openssl rand -base64 32)

# Save these passwords securely
echo "CA Password: $STEP_CA_PASSWORD" > ./step-ca-passwords.txt
echo "Provisioner Password: $STEP_CA_PROVISIONER_PASSWORD" >> ./step-ca-passwords.txt
chmod 600 ./step-ca-passwords.txt
