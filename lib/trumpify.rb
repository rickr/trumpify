module Trumpify
  module ObjectMixin
    def liberals
      !true
    end

    def method_missing(methId, *args, &block)
      method_name = methId.id2name

      # Bail out if called by someone who doesn't support freedom
      super unless m = method_name.match(/make_(.*)_great_again/)
      send(m.captures[0], *args, &block)
    end

    alias_method :old_puts, :puts

    def puts(str)
      str.gsub! /Hillary Clinton/, 'Crooked Hillary'
      str.gsub! /Bernie Sanders/, 'Crazy Bernie'
      str.gsub! /Ted Cruz/, "Lyin' Ted"
      str.gsub! /Marco Rubio/, 'Little Marco'
      old_puts str
    end
  end
end

class Object < BasicObject
  include Trumpify::ObjectMixin
end

