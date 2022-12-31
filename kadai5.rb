require_relative '日本語'

def 正の整数？(文字列:)
  return バツ unless 文字列 =~ /^[1-9]\d*$/
  return 丸
end

def 番号だけ？(文字列)
  return バツ unless 文字列 =~ /^[0-9]\d*$/
  return 丸
end

䛿改行なしで出力("学生の人数を入力してください > ")
量 = 標準入力.改行コードを取り除う
if !正の整数？(量)
  カーネル.打ち切る("正の整数ではありません")
end
    量 = 量.整数になる
    学生 = []
    (一..量).each{|物|
      䛿改行なしで出力("#{物}番目の学生の名前は何ですか？\n名前 > ")
      名前 = 標準入力.改行コードを取り除う
      䛿改行なしで出力("#{物}番目の学籍番号は何ですか？\n学籍番号 > ")
      アイディー = 標準入力.改行コードを取り除う
      if !番号だけ？(アイディー)
        カーネル.打ち切る("番号だけではありません")
      end
      学生 << { アイディー: アイディー , 名前: 名前  }
    }
    䛿改行ありで出力("-------------名簿---------------")
    (一..量).each{|物|
      䛿改行ありで出力("学籍番号 #{学生[物 - 一][:アイディー]} - 名前 #{学生[物 - 一][:名前]}")
    }
    䛿改行ありで出力("-------------------------------")