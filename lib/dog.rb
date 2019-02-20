class Dog 
  attr_reader :id 
  attr_accessor :name, :breed 
  
  def initialize(id: id=nil, name: name, breed: breed)
    @id = id 
    @name = name 
    @breed = breed 
  end 
  
  def self.create_table 
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS dogs (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        album TEXT
        )
        SQL
    DB[:conn].execute(sql) 
  end 
  
  def self.drop_table 
    sql = <<-SQL
      DROP TABLE dogs
    SQL
    DB[:conn].execute(sql)
  end 
  
  def save 
    if self.id 
      self.update 
    else 
      sql = <<-SQL 
      INSERT INTO dogs (name, breed)
      
  end 
  
end 
