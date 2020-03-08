# controller spec から request spec への移行
## ハマったこと
### sign_in が使えない
ControllerHelpers ではなく IntegrationHelpers を使用することで回避
```ruby
-  config.include Devise::Test::ControllerHelpers, type: :controller
+  config.include Devise::Test::IntegrationHelpers, type: :request
```

### get メソッドの動きの違い
controller spec では`get :new`としていたが、request spec では`get new_user_interview_path(@user)`のように書く必要がある
。

### 参考
https://qiita.com/kazuooooo/items/1677f2a3bddf3a8df23f
