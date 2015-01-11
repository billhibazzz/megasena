# MegaSena [![Build Status](https://travis-ci.org/nanernunes/megasena.svg?branch=master)](https://travis-ci.org/nanernunes/megasena) [![Code Climate](https://codeclimate.com/github/nanernunes/megasena/badges/gpa.svg)](https://codeclimate.com/github/nanernunes/megasena) [![Test Coverage](https://codeclimate.com/github/nanernunes/megasena/badges/coverage.svg)](https://codeclimate.com/github/nanernunes/megasena)

A gem **megasena** te possibilita obter diretamente do site da **CAIXA** os últimos resultados dos jogos e seus respectivos números. Por enquanto os únicos jogos disponíveis são os da CEF, mas no futuro há a pretensão de englobar outros  como a **TelaSela**.

# Instalação

```bash
gem install megasena
```

# Utilização

Pode ser utilizada instanciando um objeto do respectivo jogo. Todas as classes estão no *namespace* `Lottery`
```ruby
mega = Lottery::MegaSena.new

mega.get_contest
 => 1668
 
mega.get_numbers
 => [5, 40, 47, 52, 55, 57] 
```

Cada jogo possui um tipo de retorno diferente devido à natureza de seu resultado
```ruby
Lottery::DuplaSena.new.get_numbers
 => [[9, 16, 18, 24, 33, 42], [17, 19, 34, 37, 48, 49]]
 ````

```ruby
pp Lottery::Loteca.new.get_numbers

{"1"=>
  {:date=>"DOM",
   :player1=>{:name=>"CRICIÚMA/SC", :score=>2},
   :player2=>{:name=>"SÃO JOSÉ/RS", :score=>0}},
 "2"=>
  {:date=>"DOM",
   :player1=>{:name=>"AMÉRICA/SP", :score=>0},
   :player2=>{:name=>"CONFIANÇA/SE", :score=>3}},
 "3"=>
  {:date=>"DOM",
   :player1=>{:name=>"CEARÁ/CE", :score=>0},
   :player2=>{:name=>"GAMA/DF", :score=>0}},
 "4"=>
  {:date=>"DOM",
   :player1=>{:name=>"CATANDUVENSE/SP", :score=>3},
   :player2=>{:name=>"PONTE PRETA/SP", :score=>3}},
 "5"=> ...
}
```

# Cobertura de Jogos
Existe um *issue* aberto para cada tipo de jogo. Sinta-se à vontade se quiser contribuir com o projeto e enviar um **Pull Request** com algum jogo pronto.

|Jogo        |Conclusão |
|------------|----------|
|MegaSena    |  **OK**  |
|Quina       |  **OK**  |
|DuplaSena   |  **OK**  |
|Instantânea |          |
|Federal     |          |
|Loteca      |  **OK**  |
|LotoFácil   |          |
|LotoMania   |          |
|LotoGol     |          |
|TimeMania   |          |
