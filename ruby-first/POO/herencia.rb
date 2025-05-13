# Herencia
# superclase
class Documento 
    attr_accessor :create_at, :updated_at
    attr_accessor :nombre, :readonly

    def initialize( nombre: "Sin nombre", readonly: )
        @nombre = nombre
        @readonly = readonly
        @create_at = Time.now
        @updated_at = Time.now 
        @author = "Javier"
    end


    def guardar
        puts "Guardando..."
        @updated_at = Time.now
    end

    def nombre_documento
        nombre
    end

    def imprimir
        puts "Imprimiendo documento"
    end

    protected
    def metodo_protegido
        puts "Metodo protegido"
    end

    attr_accessor :author
end

class DocumentoTexto < Documento
    attr_accessor :extension

    def initialize( ... )
        super( ... )
        @extension = '.txt'
    end

    def nombre_documento
        super + extension
    end

    def invocar_metodo
        metodo_protegido
    end

    def nombre_autor
        "El nombre del autor es: #{ author }"
    end
end

texto = DocumentoTexto.new( nombre: "DocumentoTexto", readonly: true )
puts texto.nombre
puts texto.nombre_documento

class DocumentoHTML < Documento
    attr_accessor :extension, :encode
  
    def initialize(encode: , **options)
        super(**options)
        @encode = encode
        @extension = '.html'
    end
  
    def procesar
        puts "procesando..."
    end
  
    def nombre_documento
        super + extension
    end
  
    def imprimir
        procesar
        super
    end
end

html = DocumentoHTML.new( encode: 'utf-8', nombre: "hello word", readonly: false )
puts html.nombre
puts html.nombre_documento
html.imprimir

texto.invocar_metodo
puts texto.nombre_autor
