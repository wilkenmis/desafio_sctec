#!/bin/bash

# Script de Sincronização do Repositório - Desafio SCTEC
# Executa as etapas de versionamento e envio para o GitHub

echo "--- Iniciando o processo de Git Sync ---"

# 1. Inicializa (se não existir)
git init

# 2. Configura o .gitignore (Garante que arquivos indesejados fiquem de fora)
cat <<EOF > .gitignore
.venv/
__pycache__/
.ipynb_checkpoints/
.DS_Store
scrum_development/
claude_files/
dev/
EOF

# 3. Adiciona todos os arquivos
echo "Adicionando arquivos..."
git add .

# 4. Faz o commit
echo "Realizando commit..."
git commit -m "feat: sync project structure and content"

# 5. Vincula ao Repositório Remoto (Se já estiver vinculado, ignora erro)
echo "Vinculando repositório remoto..."
git remote add origin https://github.com/wilkenmis/desafio_sctec.git 2>/dev/null || echo "Remote já configurado."

# 6. Prepara o branch e envia
git branch -M main
echo "Enviando para o GitHub (Push)..."
git push -u origin main

echo "--- Processo finalizado com sucesso! ---"
