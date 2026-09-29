# Jekyll does not read Markdown in _data as a page by default.
module Jekyll
  class CvPageGenerator < Generator
    safe true
    priority :normal

    def generate(site)
      site.pages << Page.new(site, site.source, "_data", "cv.md")
    end
  end
end
