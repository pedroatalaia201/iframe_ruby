class Video < ApplicationRecord
  validates :title, presence: true

  #validar o formato do link?
  validates :link, :format => {
    :with => /^(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})/,
    :multiline => true,
    :message => "Adicione somente urls do youtube"
  }

  #overload to embed_code 
  def get_link
    get_url = self.link
  end

  #get the id from the link
  def get_embed_code
    embed_code = get_link
    embed_code.sub! 'https://www.youtube.com/watch?v=', 'https://www.youtube.com/embed/' 
    embed_code.to_s  
  end


end
