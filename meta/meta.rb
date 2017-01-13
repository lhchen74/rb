['jim','hanlei','jiangfen'].each do |name|
    define_method "say_hi_to_#{name}" do
        puts "hi,#{name}"
    end
end
say_hi_to_jim
say_hi_to_hanlei

