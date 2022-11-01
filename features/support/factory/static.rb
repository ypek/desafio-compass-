
module Factory
    class Static
      def self.load_file
        YAML.load_file(File.dirname(__FILE__) + "/static/#{ENVIRONMENT}.yml")
      end
  
      def self.static_data(data)
        Static.load_file[data]
      end

      def self.get_random_products_names
        sample_product_names = Static.load_file['product_names'].sample
        sample_product_names['name']
      end
    end
  end

  