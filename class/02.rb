#Ruby require 语句
#$LOAD_PATH << '.'
require 'trig.rb'


#Ruby include 语句
#您可以在类中嵌入模块。为了在类中嵌入模块，您可以在类中使用 include 语句：


#Ruby 中的 Mixins  
#Ruby 没有真正实现多重继承机制，而是采用成为mixin技术作为替代品。将模块include到类定义中，模块中的方法就mix进了类中。
module A
    def a1
    end
    def a2
    end
end
module B
    def b1
    end
    def b2
    end
end
class Sample
include A
include B
    def s1
    end
end

samp =Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1