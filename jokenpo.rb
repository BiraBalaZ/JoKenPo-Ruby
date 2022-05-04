#variaveis iniciais
j_placar = 0
ja_placar = 0
game = 0

#enquanto o placar de ambos for diferente de três, o jogo vai funcionar;
while game = 0
  p "Digite [1] para pedra"
  p "Digite [2] para papel"
  p "Digite [3] para tesoura"
  j = gets
  ja = rand(8)
  
  #Escolha do jogador;
  case j
    when 1 
      p "Pedra" 
      when 2 
      p "Papel"
    when 3 
      p "Tesoura"
    end
  
  #Aleatoriedade da Máquina;
  case ja
    when 1, 4, 7
      p "Pedra"
    when 2, 5, 8
      p "Papel"
    when 3, 6, 0
      p "Tesoura"
    end
  
  #Resultados;

  #Pedra contra Papel;
  if j == 1 && ja == 2 || ja == 5 || ja == 8
    p "O computador escolheu Papel e você escolheu Pedra." 
    p "Você foi embrulhado"
    p "Você Perdeu!"
    #aumentando o numero do placar da máquina;
    ja_placar += 1

  #Pedra contra Tesoura;
  elsif j == 2 && ja == 1 || ja == 4 || ja == 7
    p "O computador escolheu Tesoura, e você escolheu Pedra." 
    p "Você esmagou ele!" 
    p "Você Venceu!"
    #aumentando o numero do placar do jogador;
    j_placar += 1

  #Papel contra Tesoura;
  elsif j == 2 && ja == 3 || ja == 6 || ja == 0
    p "O computador escolheu Tesoura, e você escolheu Papel."
    p "Você foi picotado" 
    p "Você Perdeu!"
    #aumentando o numero do placar da máquina;
    ja_placar += 1

  #Papel contra Pedra;
  elsif j == 2 && ja == 1 || ja == 4 || ja == 7
    p "O computador escolheu Pedra, e você escolheu Papel."
    p "Você embrulhou ele!" 
    p "Você Venceu!"
    #aumentando o numero do placar do jogador;
    j_placar += 1

  #Tesoura contra Pedra;
  elsif j == 3 && ja == 1 || ja == 4 || ja == 7
    p "O computador escolheu Pedra, e você escolheu Tesoura."
    p "Você foi esmagado!" 
    p "Você Perdeu!"
    #aumentando o numero do placar da máquina;
    ja_placar += 1

  #Tesoura contra papel;
  elsif j == 3 && ja == 2 || ja == 5 || ja == 8
    p "O computador escolheu Papel, e você escolheu Tesoura."
    p "Você picotou ele!"
    p "Você Venceu!"
    #aumentando o numero do placar do jogador;
    j_placar += 1

  #Nenhuma das opções acima, quando os dois escolhem a mesma opção;
  else
    p "Você e o Computador escolheram a mesma opção!."
    p "Vocês Empataram!"
    end
end

if j_placar = 3 || ja_placar = 3
  game = 1
end