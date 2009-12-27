files = Dir.glob(File.join('.','lib','koalemos','**','*.rb'))
files.each do |f|
 require f
end

include Koalemos