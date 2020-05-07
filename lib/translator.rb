#emoticons = YAML.load(File.read('lib/emoticons.yml'))
require 'yaml'
require 'pry'


def load_library(path)
  emoticons = YAML.load_file(path)
  new_hash = {}
  emoticons.each do |expression, emoticon_text|
    new_hash[expression] = {:english => emoticon_text[0], :japanese => emoticon_text[1]}
  end
  new_hash
end

def get_japanese_emoticon(path, western_emoticon)
  load_library(path).each do |expression, languages|
      if languages[:english] == western_emoticon
        return languages[:japanese]
      end
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(path, japanese_emoticon)

end
