# Rubeno Sur Reloj

Rubeno sur reloj estas startilaro de Ruby On Rails, por krei projektojn en
esperanto.

## Antaŭnecesaĵo

- Ruby 3.0.0
- Rails 7.0.0

## Priskribo

La projekto uzas kelkajn agordojn por krei bazajn ŝablonoj:

- Tradukitaj dosieroj .erb aŭtomate generota de la komando `rails g scaffold ...`
- Aldonita dosieron `config/locales/eo.yml` kaj i18n agordita.
- Kreita propra generilo `esxafodo`, kiu estas simila al komando `scaffold`,
  sed kun granda parto de la ŝablonoj estas tradukita al esperanto. `rails g
  esxafodo ...`

## Instalado

Klonu la deponejon:

```shell
git clone git@github.com:kroyxlab/rubeno_sur_reloj.git projektnomo
cd projektnomo
```

Ŝanĝu la agorodojn en la dosiero `config/database.yml` se estas necesa.

## Uzado

### Generilo Scaffold

La dosieroj .erb kreitaj per la komando `rails g scaffold nomo ...` havas
partojn tradukitajn al esperanto.

### Propra generilo Esxafodo

Oni povas uzi la komandon `rails g esxafodo nomo ...`, same kiel uzi la komandon
`scaffold`, por krei la dosierojn necesajn por krei sistemon CRUD tradukitan al
esperanto, pli multe kiel eble.
> Ankoraŭ oni povas traduki pli partojn, se interesas al vi faru ŝanĝojn kaj
> sendu tirpeton bonvolu.

### Metodo Rimedoj

Same kiel uzi la metodo `resources` en `config/routes.rb`, oni povas uzi la
metodon `rimedoj` por krei kursojn(routes) en esperanto.

Skribante `rimedoj afisxoj` en `routes.rb` estos kreataj tiu ĉi kursoj:

```ruby
  get "#{afisxoj}", to: "#{afisxoj}#index"
  get "#{afisxoj}/nova", to: "#{afisxoj}#nova"

  post "#{afisxoj}", to: "#{afisxoj}#kreu"

  get "#{afisxoj}/:id", to: "#{afisxoj}#montru"

  get "#{afisxoj}/:id/redaktu", to: "#{afisxoj}#redaktu"
  patch "#{afisxoj}/:id", to: "#{afisxoj}#gxistadigu"

  delete "#{afisxoj}/:id", to: "#{afisxoj}#forigu"
```

## Kontribuo

Ĉiu la kontribuoj estas bonvenaj.
