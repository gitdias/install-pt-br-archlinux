#!/bin/bash
#
# Autor: Sandro Dias
# Script: prepare-install.sh
# Descrição: Apenas Configura layout de teclado e ajusta /etc/pacman.conf 
# Licença: MIT
# Data de Criação: 30-12-2023
# Controle de Versão: 0.0.1
#
# -------------------------------------------------------
# Histórico de Versões:
#
# | Versão | Data       | Autor           | Descrição                      |
# |--------|------------|-----------------|--------------------------------|
# | 0.0.1  | 30-12-2023 | Sandro Dias     | Versão inicial                 |
# -------------------------------------------------------
#
# Suporte e Contato:
# - E-mail: pro.sandrodias@gmail.com	
# - GitHub: https://github.com/gitdias/install-pt-br-archlinux.git
# - Issues: https://github.com/gitdias/install-pt-br-archlinux/issues
#
# Altera o layout do teclado para abnt2
loadkeys=br-abnt2
echo ""
#
# Caminho do arquivo
arquivo="/etc/pacman.conf"
#
# Localize e remova '#' de '#Color'
sed -i 's/#Color/Color/' $arquivo
echo " A saída de comandos colorida foi habilitada"
echo ""
#
# Localize '#Paralelo = 5', remova '#' e substitua '5' por '10'
sed -i 's/#Paralelo = 5/Paralelo = 10/' $arquivo
echo "Habilitado 10 downloads simultâneos de pacotes"
echo ""
#
# Insira uma linha após a linha que contém 'Color' com a palavra 'ILoveCandy'
sed -i '/Color/a ILoveCandy' $arquivo
echo "Barra de progresso com PacMan habilitada"
echo ""
#
# Syncronizando repositórios Archlinux e Atualizando o script archinstall
pacman -Sy archinstall
clear
echo ""
echo " Você já pode chamar o archinstall atualizado,"
echo " ou iniciar uma instalação personalizada por você."
echo ""
echo "O layout do seu teclado já está como abnt2"
echo ""
#



