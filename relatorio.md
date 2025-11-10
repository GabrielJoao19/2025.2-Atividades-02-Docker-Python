# Relatório da Atividade Avaliativa — Docker com Python

## Introdução

Este relatório descreve a execução da **Atividade Avaliativa 2025.2-Atividades-03-Docker-Python**, que teve como objetivo fundamental demonstrar a capacidade de empacotar e executar aplicações Python em ambientes isolados utilizando o **Docker**.  

O contexto da atividade envolveu a criação de uma **imagem personalizada**, baseada no sistema operacional **Fedora**, para instalar o interpretador Python (`python3` e `python3-pip`) e, subsequentemente, executar dois scripts Python dentro de um container com o uso de **mapeamento de volumes**.  

A importância do uso de **Docker com Python** reside na garantia de portabilidade e consistência do ambiente. Ao isolar a aplicação Python e suas dependências (como a versão exata do Python, bibliotecas específicas e o sistema operacional base) em uma imagem, elimina-se o problema *"funciona na minha máquina"*, facilitando o desenvolvimento, teste e implantação em qualquer servidor, independentemente de seu sistema operacional hospedeiro.

---

## Relato das Atividades Realizadas

A atividade foi dividida em quatro etapas principais: **Preparação**, **Criação do Dockerfile**, **Construção da Imagem** e **Execução com Mapeamento de Volumes**.

---

### 1. Preparação e Criação dos Arquivos

O repositório foi **forkado e clonado**.  
Foram criados os scripts `alomundo.py` e `calculadora.py` na raiz do projeto, conforme especificado no checklist.

---

### 2. Criação do Dockerfile

O arquivo `Dockerfile` foi criado com as seguintes instruções:

```dockerfile
FROM fedora:latest
RUN dnf install -y python3 python3-pip && dnf clean all
RUN mkdir -p /app
WORKDIR /app
CMD ["python3"]
```

### 3. Construção da Imagem

```bash
docker build -t python-fedora-app .
```
O build foi concluído após corrigir um erro temporário de contexto.

### 4. Execução

Houve erro ao usar pwd no terminal, resolvido substituindo por ${PWD}
```bash
docker run --rm -v "${PWD}:/app" python-fedora-app python3 /app/alomundo.py
docker run --rm -v "${PWD}:/app" python-fedora-app python3 /app/calculadora.py

```
O build foi concluído após corrigir um erro temporário de contexto.

### 6. Considerações Finais

A atividade mostrou a utilidade do Docker em criar ambientes padronizados e independentes.

