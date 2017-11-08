module LinksHelper
  def notice_text link
    "Please use<br/><b>http://UrlShortener.com/#{link.id.to_s(16)}</b><br/>
    as short representation of <br/><b>#{link.original_url}</b>"
  end
end
