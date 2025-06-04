def validar_senha(senha)
  erros = []

  erros << "Senha deve ter pelo menos 8 caracteres" if senha.length < 8
  erros << "Senha deve conter pelo menos uma letra maiúscula" unless senha.match(/[A-Z]/)
  erros << "Senha deve conter pelo menos uma letra minúscula" unless senha.match(/[a-z]/)
  erros << "Senha deve conter pelo menos um número" unless senha.match(/\d/)
  erros << "Senha deve conter pelo menos um caractere especial (!@#$%^&*)" unless senha.match(/[!@#$%^&*]/)

  if erros.empty?
    puts "Senha válida e forte!"
  else
    puts "Senha fraca, corrija os seguintes pontos:"
    erros.each { |e| puts "- #{e}" }
  end
end

puts "Digite a senha para validar:"
senha = gets.chomp

validar_senha(senha)
