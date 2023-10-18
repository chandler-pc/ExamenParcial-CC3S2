class OpenClosed
    def self.meths(m)
        m.instance_methods + m.private_instance_methods + m.protected_instance_methods
    end
    def self.singleton_class
        class << self
            self
        end
    end
    def self.include(*mods)
        
end

open = OpenClosed.meths(File).include?(:open)
puts open