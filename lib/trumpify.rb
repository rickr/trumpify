module Trumpify
  module ObjectMixin
    def liberals
      !true
    end

    def president?
      true
    end

    def method_missing(methId, *args, &block)
      method_name = methId.id2name

      # Bail out if called by someone who doesn't support freedom
      super unless m = method_name.match(/make_(.*)_great_again/)
      send(m.captures[0], *args, &block)
    end
  end
end

class Object < BasicObject
  include Trumpify::ObjectMixin
end

