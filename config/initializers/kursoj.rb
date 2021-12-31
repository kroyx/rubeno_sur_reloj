def rimedoj(nomo_de_kurso)
  get "#{nomo_de_kurso}", to: "#{nomo_de_kurso}#index"
  get "#{nomo_de_kurso}/nova", to: "#{nomo_de_kurso}#nova"

  post "#{nomo_de_kurso}", to: "#{nomo_de_kurso}#kreu"

  get "#{nomo_de_kurso}/:id", to: "#{nomo_de_kurso}#montru"

  get "#{nomo_de_kurso}/:id/redaktu", to: "#{nomo_de_kurso}#redaktu"
  patch "#{nomo_de_kurso}/:id", to: "#{nomo_de_kurso}#gxistadigu"

  delete "#{nomo_de_kurso}/:id", to: "#{nomo_de_kurso}#forigu"
end

