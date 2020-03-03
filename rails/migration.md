# 既存モデルへの timestamps の追加
timestamp の created_at updated_at は通常`null: false`なので、
マイグレーションを実行しようとすると過去のレコードの timestamps が入っていないため
エラーとなってしまう。
そこで下記のように一旦`null: true`とし一時的に NULL を許容した後、
過去のレコードに適当な古い日付を追加し、最後に再び`null: false`とする。
```ruby
def change
  add_timestamps :products, null: true 

  long_ago = DateTime.new(2000, 1, 1)
  Product.update_all(created_at: long_ago, updated_at: long_ago)

  change_column_null :products, :created_at, false
  change_column_null :products, :updated_at, false
end
```
