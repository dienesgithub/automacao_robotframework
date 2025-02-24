# 🤖 Robot Framework - Test Automation

Este repositório contém testes automatizados utilizando o **Robot Framework**. Os testes são executados automaticamente via **GitHub Actions** a cada push ou pull request.

## 📌 Tecnologias Utilizadas
- [Robot Framework](https://robotframework.org/)
- [GitHub Actions](https://docs.github.com/en/actions)
- [Python](https://www.python.org/)

## 📁 Estrutura do Projeto
```
robot-framework-tests/
│-- tests/                 # Diretório com os testes
│   ├── test_example.robot # Exemplo de caso de teste
│-- .github/workflows/     # Configuração do GitHub Actions
│   ├── robot-tests.yml    # Workflow de execução dos testes
│-- README.md              # Documentação do projeto
```

## 🚀 Como Executar Localmente

1️⃣ **Clonar o repositório:**
```bash
git clone https://github.com/dienesgithub/automacao_robotframework.git
cd robot-framework-tests
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
```

4️⃣ **Executar os testes:**
```bash
robot tests
```

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
🔗 **Desenvolvido por [Seu Nome](https://github.com/dienesgithub)** 🚀

