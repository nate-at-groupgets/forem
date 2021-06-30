module Forem
  module MigrationMacros
    def cleanup_migrations!
      Dir.chdir(Rails.root) do
        FileUtils.rm_rf("db/migrate")
      end
    end
  end
end

RSpec.configure do |c|
  c.include Forem::MigrationMacros, :example_group => {
    :file_path => /spec\/migrations/
  }
end