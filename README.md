# 🤖 Robot Framework - Test Automation

Este repositório contém testes automatizados utilizando o **Robot Framework**. Os testes são executados automaticamente via **GitHub Actions** a cada push ou pull request.

## 📌 Tecnologias Utilizadas
- [Robot Framework](https://robotframework.org/)
- [GitHub Actions](https://docs.github.com/en/actions)
- [Python](https://www.python.org/)

## 📁 Estrutura do Projeto
```
📦 automacao_robotframework
├── 📂 .github/workflows/  # Configuração do GitHub Actions
|   ├── 📜 robot-ci.yml    # Workflow de execução dos testes
├── 📂 tests               # Diretório com os testes
├── 📜 README.md           # Documentação do projeto
```

## 🚀 Como Executar Localmente

1️⃣ **Clonar o repositório:**
```bash
git clone https://github.com/dienesgithub/automacao_robotframework.git
cd automacao_robotframework
```

2️⃣ **Criar um ambiente virtual (opcional, mas recomendado):**
```bash
python -m venv venv
source venv/bin/activate   # Linux/macOS
venv\Scripts\activate      # Windows
```

3️⃣ **Instalar dependências:**
```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

4️⃣ **Executar os testes:**
```bash
robot tests
```

## 🌐 Execução Automática via GitHub Actions
Verificar versão do navergador Chrome na máquina local e baixar o [chromedriver](https://googlechromelabs.github.io/chrome-for-testing/).
Assim que feito o download o arquivo **chromedriver.exe** deve ser colocado no diretório **./Scripts/** do local de instalação do Python.

## 🛠 Execução Automática via GitHub Actions
A cada **push** ou **pull request**, os testes serão executados automaticamente. Para visualizar os resultados:
1. Acesse o repositório no GitHub.
2. Clique na aba **"Actions"**.
3. Selecione o workflow mais recente para ver os detalhes da execução.

## 📜 Exemplo de Teste
```robot
*** Settings ***
Library  OperatingSystem

*** Test Cases ***
Teste Exemplo
    Log  Hello, Robot Framework!
    Should Be Equal  1  1
```

## 📌 Contribuição
Sinta-se à vontade para abrir issues ou enviar pull requests! 😊

## 📄 Licença
Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---
🔗 **Desenvolvido por [Dienes Stein](https://github.com/dienesgithub)** 🚀

