require 'amazon/ecs'

class Tasks
  class ComicGetter
    class << self
      def execute
        Amazon::Ecs.configure do |options|
          options[:AWS_access_key_id] = ENV['AWS_ACCESS_KEY_ID']
          options[:AWS_secret_key] = ENV['AWS_SECRET_KEY']
          options[:associate_tag] = ENV['ASSOCIATE_TAG']
        end

        res = Amazon::Ecs.item_search('test', response_group: 'Medium')
        res.items.each { |item| create_comic(item) }
      end

      def attributes(item)
        large_image = item.get_hash('LargeImage')

        {
          asin: item.get('ASIN'),
          title: item.get('ItemAttributes/Title'),
          author: item.get('ItemAttributes/Author'),
          publisher: item.get('ItemAttributes/Publisher'),
          image_path: large_image['URL']
        }
      end

      def author(name)
        Author.find_or_create_by(name: name)
      end

      def publisher(name)
        Publisher.find_or_create_by(name: name)
      end

      def create_comic(item)
        attributes = attributes(item)
        Comic.find_or_create_by(
          asin: attributes[:asin],
          image_path: attributes[:image_path],
          author_id: author(attributes[:author]).id,
          publisher_id: publisher(attributes[:publisher]).id
        )
      end
    end
  end
end
