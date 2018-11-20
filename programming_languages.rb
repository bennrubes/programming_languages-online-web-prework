require "pry"
def reformat_languages(languages)
new_hash = {}
  languages.each do |style, language_list|
    language_list.map do |language, description|
      binding.pry
      new_hash[language][description.key] = description[:type]
      if new_hash[language][:style] == nil
        new_hash[language][:style] = [style]
      else 
        new_hash[language][:style] << style
      end
    end
  end
new_hash
end
