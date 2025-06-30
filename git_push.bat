@echo off
cd /d "%~dp0"
echo Iniciando push para o GitHub...

REM Inicializa o repositório (caso ainda não tenha sido feito)
git init

REM Cria/atualiza o README.md
echo Criando README.md...
(
echo # Atividade Pratica 03 - Python 🐍
echo.
echo Este repositório contém as soluções da Atividade Prática 03, composta por quatro exercícios básicos em Python:
echo.
echo ## 🧩 Arquivos
echo.
echo ^| Arquivo                 ^| Descrição                                                                 ^|
echo ^|-------------------------^|---------------------------------------------------------------------------^|
echo ^| `age_qualifier.py`      ^| Solicita a idade do usuário e o classifica como criança, adolescente, adulto ou idoso. ^|
echo ^| `imc_calculator.py`     ^| Calcula o IMC do usuário com base em peso e altura e exibe a classificação. ^|
echo ^| `temperature_converter.py` ^| Converte temperaturas entre Celsius, Fahrenheit e Kelvin. ^|
echo ^| `leap_year_checker.py`  ^| Verifica se um ano informado é bissexto. ^|
echo.
echo ## ▶️ Como Executar
echo.
echo ^```bash
echo python nome_do_arquivo.py
echo ^```
echo.
echo Substitua `nome_do_arquivo.py` por qualquer um dos quatro scripts.
echo.
echo ## 💻 Feito por
echo Pedro Lucas Lima de Freitas
) > README.md

REM Adiciona todos os arquivos
git add .

REM Faz o commit
git commit -m "Atividade Prática 03 - commit automatizado"

REM Define branch principal
git branch -M main

REM Adiciona o repositório remoto (URL atualizada!)
git remote add origin https://github.com/pdrlucs/Atividade03.git

REM Faz o push
git push -u origin main

echo.
echo ✅ Tudo pronto! Verifique seu GitHub.
pause
