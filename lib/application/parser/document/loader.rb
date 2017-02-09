module Application
  class Parser::Document::Loader

    class << self
      def find_one(name)
        [file = Parser::Document.new(name)]
      end

      def load_all
        full_path_to_folder = File.join(ROOT_DIR, DEFAULT_FILE_DIR, '*')
        file_names          = Dir[full_path_to_folder]

        file_names.map do |name|
          Parser::Document.new(name)
        end
      end
    end
  end
end
