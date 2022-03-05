class AddKindToProducts < ActiveRecord::Migration[6.1]

  def change
    #commentはコメントの追加, limitは最大文字数, デフォルトは入ってこなかった時に入るデータ
    add_column :products,:kind, :string, comment: '商品の種類を表すカラム', default: 'food', limit: 10
    #precisionは全体の桁数, scaleは小数点以下の桁数
    add_column :products, :sold_at, :datetime, precision: 6
    add_column :products, :sample, :decimal, precision: 3, scale: 2
  end
end
