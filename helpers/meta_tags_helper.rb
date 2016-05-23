module MetaTagsHelper
  def meta_tag_description
    data.site.baseline
  end

  def meta_tag_image
    path = image_path('cactus.png')
    # remove the ../ occurrences
    path.gsub!(/^(\.\.\/)*/, '')

    host_url(path)
  end

  def meta_tag_page_title
    data.site.name
  end

  def meta_tag_site_name
    data.site.name
  end

  def meta_tag_title
    data.site.name
  end

  def meta_tag_twitter
    "@#{data.site.twitter}"
  end

  def meta_tag_url
    host_url(current_page.url)
  end

  def host_url(url)
    # remove the first / char
    base_url = url.gsub(/^\//, '')
    URI.join(data.site.url, base_url)
  end
end