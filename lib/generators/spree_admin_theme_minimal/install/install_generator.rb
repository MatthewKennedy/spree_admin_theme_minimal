module SpreeAdminThemeMinimal
  module Generators
    class InstallGenerator < Rails::Generators::Base
      class_option :auto_run_migrations, type: :boolean, default: false

      def add_stylesheets
        inject_into_file 'vendor/assets/stylesheets/spree/backend/all.css', " *= require spree/backend/spree_admin_theme_minimal\n", before: %r{\*\/}, verbose: true
      end
    end
  end
end
