# Criar o arquivo de exclusão do Git
touch .gitignore

# Adicionar as pastas que o Git deve ignorar (escreva isso dentro do .gitignore)
echo ".venv/" >> .gitignore
echo "__pycache__/" >> .gitignore
echo "scrum_development/" >> .gitignore
echo "claude_files/" >> .gitignore
echo ".DS_Store" >> .gitignore
