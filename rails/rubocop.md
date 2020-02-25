# Rails/ReversibleMigration
マイグレーションファイルがreversibleな状態になっているかチェックできる

`add_column :users, :name, :string` の逆は `remove_column :users, :name, :string`だが、

`remove_column :users, :name`の逆はカラムの型がわからないとaddできない

このような状態を避けるためのチェック

https://sue445.hatenablog.com/entry/2017/01/16/120405

