# encoding: utf-8
# coffeeファイルをjsファイルに置換し、対応するdirに置く

Dir::glob("app_org/**/*.js").each do |input|
  farr = input.split("/")
  output = ["coffee", farr[1], farr[2].sub(".js", ".coffee")].join("/")

  system("js2coffee #{input} > #{output}")
end
