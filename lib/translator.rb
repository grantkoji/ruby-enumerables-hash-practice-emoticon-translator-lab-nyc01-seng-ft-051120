#emoticons = YAML.load(File.read('lib/emoticons.yml'))
require 'yaml'
require 'pry'


def load_library(path)
  emoticons = YAML.load_file(path)
  new_hash = {}
  emoticons.each do |expression, emoticon_text|
    new_hash[expression][:english] = emoticon_text[0]
    new_hash[expression][:japanese] = emoticon_text[1]
  end
  new_hash    
  end
end

def get_japanese_emoticon(path, western_emoticon)

end

def get_english_meaning(path, japanese_emoticon)

end
