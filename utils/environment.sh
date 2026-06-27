# 1. Criar o ambiente virtual (uma pasta chamada .venv)
python3 -m venv .venv

# 2. Ativar o ambiente 
source .venv/bin/activate

# 3. Instalar as dependências necessárias
pip install pandas plotly numpy

# 4. Criar o arquivo de requisitos (essencial para o avaliador saber o que instalar)
pip freeze > requirements.txt
