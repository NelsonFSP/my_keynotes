# Crie uma conta aws
# Configura um IAM user com permissoes específicas
# Instale e configure a AWS CLI
# Por fim execute o script abaixo para criar uma CMK, encriptar e decriptar um dado sensível usando a AWS CLI

# Variáveis
ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
REGION="us-east-1"

# Criar CMK com descrição
KEY_ID=$(aws kms create-key \
  --description "CMK para lab IAM e Segurança" \
  --key-usage ENCRYPT_DECRYPT \
  --origin AWS_KMS \
  --region $REGION \
  --query KeyMetadata.KeyId --output text)

echo "CMK criada: $KEY_ID"

# Criar alias amigável
aws kms create-alias \
  --alias-name alias/lab-iam-security \
  --target-key-id $KEY_ID \
  --region $REGION

# Habilitar rotação anual automática
aws kms enable-key-rotation \
  --key-id $KEY_ID \
  --region $REGION

# Testar encriptação
# Alterado para rodar no ambiente Windows
# 1. Primeiro, salve o dado puro em um arquivo temporário (sem base64 manual)
echo -n "dado sensível" > plaintext.txt

# 2. Execute o encrypt apontando para o arquivo puro
aws kms encrypt \
  --key-id alias/lab-iam-security \
  --plaintext fileb://plaintext.txt \
  --output text \
  --query CiphertextBlob \
  --region "$REGION" > encrypted.b64

echo "Dado encriptado: $(cat encrypted.b64)"

# Para decriptar, primeiro converta o arquivo base64 para binário
base64 -d encrypted.b64 > encrypted.bin

# Decriptar
aws kms decrypt \
  --key-id alias/lab-iam-security \
  --ciphertext-blob fileb://encrypted.bin \
  --output text \
  --query Plaintext \
  --region $REGION | base64 -di


# Agende o encerramento e exclusão da chave após 7 dias, por questões de segurnça e custo
aws kms schedule-key-deletion \
  --key-id $KEY_ID \
  --pending-window-in-days 7 \
  --region $REGION