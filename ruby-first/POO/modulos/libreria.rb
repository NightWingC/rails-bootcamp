module MyLib

    # metodo callback que se va ejecutar automatico
    def self.included( base )
        puts "MyLib esta siendo incluido en #{ base }"
        base.extend( MetodosClass )
    end

    def some_method
        puts "Un metodo a incluir"
    end

    module MetodosClass
        def method_class
            puts "Este metodo fue incluido MyLib::MetodosClase"
        end
    end
end


class MyClass
    include MyLib
end

class MyClass2
    include MyLib
end

MyClass.method_class

