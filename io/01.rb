#sysread方法
rFile =File.new("input.txt","r")
if rFile
    content =rFile.sysread(20) #该语句将输入文件的头 20 个字符。文件指针将被放置在文件中第 21 个字符的位置。
    puts content
else
    puts "Unable to open file"
end

#syswrite 方法
wFile = File.new("input.txt", "r+")
if wFile
   wFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end

#each_byte 方法
afile =File.new("input.txt","r+")
if afile
    afile.syswrite("ASFDLVS,V JVOWEJ")
    afile.rewind  #rewind 将文件指针移动到文件开始位置
    afile.each_byte{|ch| putc ch; putc ?.}  #与 puts 语句不同，puts 语句输出整个字符串到屏幕上，而 putc 语句可用于依次输出一个字符。
else
   puts "Unable to open file!"
end


#IO.readlines 方法
arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1]


#IO.foreach 方法
#该方法也逐行返回输出。方法 foreach 与方法 readlines 之间不同的是，
#方法 foreach 与块相关联。但是，不像方法 readlines，方法 foreach 不是返回一个数组。
IO.foreach("input.txt"){|block| puts block}




=begin
文件查询
下面的命令在打开文件前检查文件是否已存在：
#!/usr/bin/ruby

File.open("file.rb") if File::exists?( "file.rb" )
下面的命令查询文件是否确实是一个文件：
#!/usr/bin/ruby

# 返回 true 或false
File.file?( "text.txt" ) 
下面的命令检查给定的文件名是否是一个目录：
#!/usr/bin/ruby

# 一个目录
File::directory?( "/usr/local/bin" ) # => true

# 一个文件
File::directory?( "file.rb" ) # => false
下面的命令检查文件是否可读、可写、可执行：
#!/usr/bin/ruby

File.readable?( "test.txt" )   # => true
File.writable?( "test.txt" )   # => true
File.executable?( "test.txt" ) # => false
下面的命令检查文件是否大小为零：
#!/usr/bin/ruby

File.zero?( "test.txt" )      # => true
下面的命令返回文件的大小：
#!/usr/bin/ruby

File.size?( "text.txt" )     # => 1002
下面的命令用于检查文件的类型：
#!/usr/bin/ruby

File::ftype( "test.txt" )     # => file
ftype 方法通过返回下列中的某个值来标识了文件的类型：
file、 directory、 characterSpecial、 blockSpecial、 fifo、 link、 socket 或 unknown。
下面的命令用于检查文件被创建、修改或最后访问的时间：
#!/usr/bin/ruby

File::ctime( "test.txt" ) # => Fri May 09 10:06:37 -0700 2008
File::mtime( "text.txt" ) # => Fri May 09 10:44:44 -0700 2008
File::atime( "text.txt" ) # => Fri May 09 10:45:01 -0700 2008=end




=begin
Ruby 中的目录
所有的文件都是包含在目录中，Ruby 提供了处理文件和目录的方式。File 类用于处理文件，Dir 类用于处理目录。
浏览目录
为了在 Ruby 程序中改变目录，请使用 Dir.chdir。下面的实例改变当前目录为 /usr/bin。
Dir.chdir("/usr/bin")
您可以通过 Dir.pwd 查看当前目录：
puts Dir.pwd # 返回当前目录，类似 /usr/bin
您可以使用 Dir.entries 获取指定目录内的文件和目录列表：
puts Dir.entries("/usr/bin").join(' ')
Dir.entries 返回一个数组，包含指定目录内的所有项。Dir.foreach 提供了相同的功能：
Dir.foreach("/usr/bin") do |entry|
   puts entry
end
获取目录列表的一个更简洁的方式是通过使用 Dir 的类数组的方法：
Dir["/usr/bin/*"]
创建目录
Dir.mkdir 可用于创建目录：
Dir.mkdir("mynewdir")
您也可以通过 mkdir 在新目录（不是已存在的目录）上设置权限：
注意：掩码 755 设置所有者（owner）、所属组（group）、每个人（world [anyone]）的权限为 rwxr-xr-x，其中 r = read 读取，w = write 写入，x = execute 执行。
Dir.mkdir( "mynewdir", 755 )
删除目录
Dir.delete 可用于删除目录。Dir.unlink 和 Dir.rmdir 执行同样的功能，为我们提供了便利。
Dir.delete("testdir")
=end

puts Dir.pwd
puts Dir.entries(Dir.pwd).join(' ')
Dir.foreach(Dir.pwd) do |entry|
    puts entry
end

