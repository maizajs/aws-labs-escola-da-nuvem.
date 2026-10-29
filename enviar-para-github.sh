#!/bin/bash
# Uso: ./enviar-para-github.sh SEU-USUARIO
# Antes, crie o repositório vazio "aws-labs-escola-da-nuvem" no GitHub.
set -e
USUARIO="${1:?Informe seu usuario do GitHub. Ex: ./enviar-para-github.sh maizalavor}"

git init
git branch -M main
git add .
git commit -m "Adiciona lab 11 - Introdução ao Amazon EC2"
git remote add origin "https://github.com/${USUARIO}/aws-labs-escola-da-nuvem.git"
git push -u origin main
