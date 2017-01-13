module Tool
    #无法直接运行
    def show_tip
        "this is the tip"
    end

    #可以用Tool.say调用
    def self.say
        "hi"
    end
end
puts Tool.say

class Student
    include Tool
end
puts Student.new.show_tip

class Teacher
    include Tool
end
puts Teacher.new.show_tip
