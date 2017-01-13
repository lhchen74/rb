#hash最外面的{}大多数情况下可以省略
Apple.create :name=>'apple',:color=>'red'
=>Apple.create({:name=>'apple',;color=>'red'})
=>Apple.create name:'apple',color:'red'
#block简写
Apple.all.map{|apple| apple.name}
=>Apple.all.map(&:name)