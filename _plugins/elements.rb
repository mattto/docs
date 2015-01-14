module Jekyll

  # class CategoryPage < Page
  #   def initialize(site, base, dir, category)
  #     @site = site
  #     @base = base
  #     @dir = dir
  #     @name = 'index.html'

  #     self.process(@name)
  #     self.read_yaml(File.join(base, '_layouts'), 'category_index.html')
  #     self.data['category'] = category

  #     category_title_prefix = site.config['category_title_prefix'] || 'Category: '
  #     self.data['title'] = "#{category_title_prefix}#{category}"
  #   end
  # end

  class ElementPageGenerator < Generator
    safe true

    def generate(site)
      if site.layouts.key? 'foo_index'
        dir = 'docs/elements'
        site.data["element_docs"].each_key do |element|
          site.pages << Page.new(site, site.source, dir, 'paper-tabs.md')
        end
      end
    end
  end

end
