class Project 
    attr_reader :title 
  
    def initialize(title) 
        @title = title 
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
        x = ProjectBacker.all.select do |project| 
            project.project == self
    end 
    x.map do |b| 
        b.backer 
    end 
    end 

    


   
    
    
    end 