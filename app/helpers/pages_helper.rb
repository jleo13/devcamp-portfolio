module PagesHelper
  def twitter_parser tweet
    tweet =" DLizcias_okashi: RT @DigiSlice: 📱Based on #Apple quarterly guidance, #iPhone8 will launch in September https://t.co/A3WfAhKc99"
    
regex = %r{
      \b
      (
        (?: [a-z][\w-]+:
         (?: /{1,3} | [a-z0-9%] ) |
          www\d{0,3}[.] |
          [a-z0-9.\-]+[.][a-z]{2,4}/
        )
        (?:
         [^\s()<>]+ | \(([^\s()<>]+|(\([^\s()<>]+\)))*\)
        )+
        (?:
          \(([^\s()<>]+|(\([^\s()<>]+\)))*\) |
          [^\s`!()\[\]{};:'".,<>?«»“”‘’]
        )
      )
    }ix
    
    tweet.gsub(regex) do |url|
    "<a href=#{url} target='_blank'>#{url}</a>"
    end.html_safe
  end
end

