#
#
module Numbray
  
  #
  #
  module Fixnum
    
    #
    #
    class Array
      
      def initialize
        @array = [] # 
      end
      
      def << fixnum
        raise "#{self.class} only takes Fixnum" unless fixnum.class == ::Fixnum
        @array << fixnum
      end
      
    end
  end
end