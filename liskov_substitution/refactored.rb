class Project
  attr_reader :readable_files, :writable_files

  def add_readable_files(*files)
    @readable_files = files
  end

  def add_writable_files(*files)
    @writable_files = files
  end

  def save
    writable_files.each { |file| file.save }
  end

  def load
    readable_files.each { |file| file.load }
  end
end

class MyFile
  def initialize(path)
    @path = path
  end

  def save
    puts "saved"
  end

  def load
    puts "Loaded"
  end
end

class ReadOnlyFile < MyFile
  def save
    raise "This is a read only file."
  end
end

file1 = MyFile.new("/myfile")
file2 = ReadOnlyFile.new("/myotherfile")

project = Project.new
project.add_readable_files(file1, file2)
project.add_writable_files(file1)
project.load
project.save
