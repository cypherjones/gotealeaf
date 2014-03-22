require 'yaml'

def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end
def yaml_load filename
  yaml_string = File.read filename

  YAML::load yaml_string
end

my_array = ['Abel Ray',
            'Silas Seth',
            'Simon Lee']


filename = 'ChildDataSets.txt'

yaml_save my_array, filename

read_array = yaml_load filename

puts(read_array == my_array)            