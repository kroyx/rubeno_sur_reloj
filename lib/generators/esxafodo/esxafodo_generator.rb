class EsxafodoGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)
  argument :argumentoj, type: :array, default: []

  def kreu_dosierojn
    # active_record
    template 'migration.rb.tt', "db/migrate/#{timestamp}_kreu_#{name.downcase}n.rb"
    template 'model.rb.tt', "app/models/#{name.singularize.downcase}.rb"
    # test_unit
    template 'model_test.rb.tt', "test/models/#{name.singularize.downcase}_test.rb"
    template 'fixture.yml.tt', "test/fixtures/#{name.singularize.downcase}.yml"
    # resource_route
    route "resources :#{name.pluralize.downcase}, path_names: { new: 'nova', edit: 'redaktu' } "
    # controller
    template 'controller.rb.tt', "app/controllers/#{plural_name}_controller.rb"
    # erb
    template 'index.html.erb.tt', "app/views/#{route_url}/index.html.erb"
    template 'edit.html.erb.tt', "app/views/#{route_url}/edit.html.erb"
    template 'show.html.erb.tt', "app/views/#{route_url}/show.html.erb"
    template 'new.html.erb.tt', "app/views/#{route_url}/new.html.erb"
    template '_form.html.erb.tt', "app/views/#{route_url}/_form.html.erb"
    template 'partial.html.erb.tt', "app/views/#{route_url}/_#{name.singularize.downcase}.html.erb"
    # test_unit
    template 'system_test.rb.tt', "app/test/system/${name.singularize.downcase}_test.rb"
    template 'controller_test.rb.tt', "test/controllers/#{plural_name}_controller_test.rb"
    # helper
    template 'helper.rb.tt', "app/helpers/#{plural_name}_helper.rb"
    # jbuilder
    template 'index.json.jbuilder.tt', "app/views/#{route_url}/index.json.jbuilder"
    template 'show.json.jbuilder.tt', "app/views/#{route_url}/show.json.jbuilder"
    template 'partial.json.jbuilder.tt', "app/views/#{route_url}/_#{name.singularize.downcase}.json.jbuilder"
  end

  private

    def timestamp
      Time.now.utc.strftime('%Y%m%d%H%M%S')
    end

    def var_name
      name.downcase.singularize
    end

    def permesataj_argumentoj
      if argumentoj.any?
        obtenu_argumentojn.map { |arg| ":#{arg[:name]}" }
      else
        return ""
      end
    end

    def obtenu_argumentojn
      if argumentoj.any?
        split_args = argumentoj.map { |arg| arg.split ":" }
        argumentoj_hash = split_args.map { |arg| {name: arg[0], type: arg[1]} }
        return argumentoj_hash
      else
        return ""
      end
    end

    def obtenu_input_type(kolumna_tipo)
      if argumentoj.any?
        case kolumna_tipo
        when "boolean"
          "check_box"
        when "date"
          "date_field"
        when "datetime"
          "datetime_field"
        when "integer"
          "number_field"
        when "time"
          "time_field"
        when "timestamp"
          "datetime_field"
        when "text"
          "text_area"
        else
          "text_field"
        end
      end
    end

    def obtenu_ekzemplan_valoron(kolumna_tipo)
      if argumentoj.any?
        case kolumna_tipo
        when "boolean"
          "false"
        when "date"
          Time.now.utc.strftime('%Y-%m-%d')
        when "datetime", "time", "timestamp"
          Time.now.utc.strftime('%Y-%m-%d %H:%M:%S')
        when "decimal"
          9.99
        when "float"
          1.5
        when "integer"
          1
        when "string"
          "MyString"
        when "text"
          "MyText"
        else
          ""
        end
      end
    end
end
