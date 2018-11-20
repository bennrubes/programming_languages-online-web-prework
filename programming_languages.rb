require "pry"
def reformat_languages(languages)
new_hash = {}
  languages.each do |use, language_list|
    language_list.map do |language, description|
      new_hash[language][:type] = description.values
      if new_hash[language][:style] == nil
        new_hash[language][:style] = [use]
      else 
        new_hash[language][:style] << use
      end
    end
end
new_hash
end
