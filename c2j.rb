# encoding: utf-8
# coffeeファイルをjsファイルに置換し、対応するdirに置く

dirs = ["model", "view", "controller", "store"]

system("rm -rf app")
system("mkdir app")

dirs.each do |dir|
  system("mkdir app/#{dir}")
  system("coffee -o app/#{dir} -c coffee/#{dir}")
end

system("rm -f app.js")
system("coffee -c app.coffee")
