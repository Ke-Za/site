module AuthorDisplay
  class Generator < Jekyll::Generator
    def generate(site)
      site.posts.docs.each do |post|
        # Ensure author is displayed
        author = post.data['author'] || site.config['author'] || 'Anonymous'
        post.data['displayed_author'] = author
      end
    end
  end
end