class CreateCadastroQuestos < ActiveRecord::Migration
  def change
    create_table :cadastro_questos do |t|
      t.text :enunciado
      t.string :titulo
      t.string :resposta1
      t.string :resposta2
      t.string :resposta3
      t.string :resposta4
      t.string :resposta5
      t.integer :correta
      t.string :disciplina

      t.timestamps null: false
    end
  end
end
