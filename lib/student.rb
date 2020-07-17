class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  attr_reader :id

  attr_accessor :name,:grade
  def initialize(name,grade)
    @name=name
    @grade=grade
  end

  def self.create_table()
    sql="CREATE TABLE students(
    id INTEGER PRIMARY KEY,
    name TEXT,
    grade INTEGER
    );"

    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql="DROP TABLE students"
    DB[:conn].execute(sql)
  end

  def save
    sql="INSERT INTO students(name,grade) VALUES(?,?)"
    DB[:conn].execute(sql,@name,@grade)
  end

end
