# 使い方
# railsプロジェクト直下に置く
# 下記のようにマージしたいyamlファイルを列挙して実行
# ruby merge-yaml.rb views/ja.yml controllers/ja.yml models/ja.yml

# 参考
# https://qiita.com/MasahiroMorita@github/items/3679c760fdc7717d84aa

require 'yaml'

merged_yaml = {}

def merge_yaml(yaml1, yaml2)
  yaml2.each do |key, value|
    if value.class == Hash && yaml1.key?(key)
      yaml1[key] = merge_yaml(yaml1[key], value)
    else
      yaml1[key] = value
    end
  end
  return yaml1
end

ARGV.each do |file|
  yaml = YAML.load_file(file)
  merged_yaml = merge_yaml(merged_yaml, yaml)
end

puts merged_yaml.to_yaml
