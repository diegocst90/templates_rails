module Core
  module BaseModel
    extend ActiveSupport::Concern
    
    module ClassMethods
      
      # include class methods here
      def null?(column)
        columns_hash[column].null
      end
    end
    
    module InstanceMethods
      
      # include Instance methods
      def delete
        self.deleted = true
        self.save
      end
      
      def str_created_at(format = "%d/%m/%Y %I:%M %p")
        return created_at.in_time_zone.strftime(format)
      end
    
      def str_updated_at(format = "%d/%m/%Y %I:%M %p")
        return updated_at.in_time_zone.strftime(format)
      end
    end
  end
end