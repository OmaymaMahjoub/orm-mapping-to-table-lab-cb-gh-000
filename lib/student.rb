class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def initialize(name, grade,id)
    @name=name
    @grade=grade
    @id=id
  end

  attr_accessor :name,:grade

  def self.create_table(DB)
    sql="CREATE TABLE students(
    id INTEGER PRIMARY KEY,
    name TEXT,
    grade INTEGER
    );"

    DB[:conn].execute(sql)
  end


end
