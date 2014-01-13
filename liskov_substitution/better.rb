class Project
  attr_reader :reader, :writer, :readable_files, :writable_files

  def initialize(reader, writer)
    @reader = reader
    @writer = writer
  end

  def add_readable_files(*files)
    @readable_files = files
  end

  def add_writable_files(*files)
    @writable_files = files
  end

  def save
    writable_files.each { |file| writer.write(file) }
  end

  def load
    readable_files.each { |file| reader.read(file) }
  end
end

class FileReader
  def read(file)
    puts "Reading #{file.path}"
  end
end

class FileWriter
  def write(file)
    puts "Writing #{file.path}"
  end
end

class MyFile
  attr_reader :path
  def initialize(path)
    @path = path
  end
end

file1 = MyFile.new("/myfile")
file2 = MyFile.new("/myotherfile")

project = Project.new(FileReader.new, FileWriter.new)
project.add_readable_files(file1, file2)
project.add_writable_files(file1)
project.load
project.save
