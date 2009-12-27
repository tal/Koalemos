files = Dir.glob(File.join(File.dirname(__FILE__),'koalemos','**','*.rb'))
files.each do |f|
 require f
end

include Koalemos