class Post < ActiveRecord::Base

  validates :title, presence: true

  # validate :custom_method, message: "failed to publish!? D:"
  belongs_to :tag

  # def custom_method
  #   byebug => self => self.published (assume this is true for example) => how can i return a true false from the data i have  

  #   self.published ? false : true 

  #   if self.published 
  #     return false
  #   else 
  #     return true
  #   end 

  #   1. check for data/ get my data 
  #   2. write or figure a condtion to return a BOOLEAN, [], 1, "string"
    
  #   self.tag => []

  #   3. go to rails console, fail validation, @post.save, if rollback @post.errors.messages



  # end 

end 
