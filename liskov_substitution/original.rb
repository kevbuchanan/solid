class Project
  attr_reader :files

  def initialize(*files)
    @files = files
  end

  def save
    files.each { |file| file.save unless file.instance_of?(ReadOnlyFile) }
  end

  def load
    files.each { |file| file.load }
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

project = Project.new(file1, file2)
project.load
project.save
