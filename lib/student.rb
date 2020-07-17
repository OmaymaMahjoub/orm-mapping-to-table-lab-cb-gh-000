class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  attr_reader :id

  attr_accessor :name,:grade

  def self.create_table()
    sql="CREATE TABLE students(
    id INTEGER PRIMARY KEY,
    name TEXT,
    grade INTEGER
    );"

    DB[:conn].execute(sql)
  end


end
