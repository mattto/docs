module Jekyll

  class ElementPage < Page
    def initialize(site, base, dir, element)
      @site = site
      @base = base
      @dir = dir
      @name = "#{element}.html" # the name of the page to be generated

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'element.html')
      self.data['element'] = element
      self.data['title'] = "#{element}"
    end
  end

  class ElementPageGenerator < Generator
    safe true

    def generate(site)
      if site.layouts.key? 'element'
        dir = 'docs/elements'
        site.data["elements"].each_key do |element|
          site.pages << ElementPage.new(site, site.source, dir, element)
        end
      end
    end
  end

end
