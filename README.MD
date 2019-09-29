# Amaro Test QA
Teste de avaliação da Amaro.

## Dependencies

* ruby 2.5.x ou superior

## Instrucoes para instalacao

#### Instalar o bundler
Para começar, instale o bundler:

```
  gem install bundler
```

```
  bundle install
```

### Instalar o ChromeDriver
https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver
https://chromedriver.storage.googleapis.com/index.html?path=2.46/


### Executar o teste

O projeto usa o Cucumber para executar seus testes, você pode usar os seguintes comandos para executar:

```
  cucumber -t @tag
```
ou
```
  bundle exec cucumber
```

### TAGS
Tags por tipos de teste:
@login - Para o cenário de Login

@senha_invalida - Para o cenário de senha inválida

@cadastro - Para o cenário de cadastro de um novo cliente# capybara-cucumber-automation
