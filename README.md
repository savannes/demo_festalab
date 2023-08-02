# DESAFIO TÉCNICO FESTALAB

## 📝 Descrição do Projeto
Projeto desenvolvido para o processo seletivo de desenvolvedor trainee da empresa Festalab.
O projeto consiste em uma aplicação para armazenar informações de usuários.

- Foram criadas validações no modelo do usuário para garantir uma padronização na criação de usuários. 
- Para validação de cpf e telefone foram utilizadas duas bibliotecas: [cpf_cnj](https://github.com/fnando/cpf_cnpj) (valida o formato e se o número é verdadeiro) e [phone_lib](https://github.com/daddyz/phonelib)(valida o formato do telefone)
- Foi criada uma funcionalidade de busca onde é possível buscar um usuário pesquisando por qualquer informação ou parte da informação deste usuário salva no banco de dados.
- O seed foi criado com uso da biblioteca [Faker](https://github.com/faker-ruby/faker).
- Foram criados testes unitários com a biblioteca `Rspec` para validar a criação de um novo usuário.
- Para análise e correções no código foi utilizada a biblioteca [Rubocop](https://github.com/rubocop/rubocop).

## Requisitos
Ruby '3.1.2'
Rails '7.0.5'

## 💻 Instruções de setup
Copie o repositório do github para sua prória máquina.
```
git clone git@github.com:savannes/demo_festalab.git
```

No diretório `demo_festalab` instale as dependências usando o bundle install.
```
bundle install
```

Crie o banco de dados e execute as migrações pendentes.
```
rails db:create
rails db:migrate
```

Alimente o banco de dados com rails db:seed
```
rails db:seed
```

Inicie o servidor utilizando o servidor Rails
```
rails s
```
Acesse o serviço pelo navegador [http://localhost:3000/users](http://localhost:3000/users).

Para executar os testes unitários basta usar rspec.
```
rake spec
```
Resultados
```
User
  user validation
    valid user?
    cpf is unique?
    email is unique?
    user name exist?
    user cpf exist?
    user email exist?
    cpf is valid?
    phone is valid?

Finished in 0.04438 seconds (files took 2.7 seconds to load)
8 examples, 0 failures
```



