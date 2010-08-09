module DisplayName
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def display_name(method)
      define_method :display_name do
        send(method)
      end

      define_method :to_s do
        send(method)
      end
    end
  end
end
