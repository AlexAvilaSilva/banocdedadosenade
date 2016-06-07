json.array!(@cadastro_questos) do |cadastro_questo|
  json.extract! cadastro_questo, :id, :enunciado, :titulo, :resposta1, :resposta2, :resposta3, :resposta4, :resposta5, :correta, :disciplina
  json.url cadastro_questo_url(cadastro_questo, format: :json)
end
