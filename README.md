# Rubeno Sur Reloj

Rubeno sur reloj estas ŝablono de Ruby On Rails, por krei projektojn en
esperanto.

## Antaŭnecesaĵo

- Ruby 3.0.0
- Rails 7.0.0

## Priskribo

La projekto uzas kelkajn agordojn por krei bazajn dosierojn/agordojn:

- Tradukitaj dosieroj .erb aŭtomate generota de la komando `rails g scaffold ...`
- Aldonita dosieron `config/locales/eo.yml` kaj i18n agordita.
- Kreita propra generilo `esxafodo`, kiu estas simila al komando `scaffold`,
  sed kun granda parto de la dosieroj, komentoj kaj routes estas tradukita al
  esperanto. `rails g esxafodo ...`

## Uzado

Klonu la deponejon:

```shell
git clone git@github.com:kroyxlab/rubeno_sur_reloj.git projektnomo
cd projektnomo
```

Ŝanĝu la agorodojn en la dosiero `config/database.yml` se estas necesa.

