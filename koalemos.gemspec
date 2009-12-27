# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{koalemos}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tal Atlas"]
  s.date = %q{2009-12-27}
  s.description = %q{A bunch of small extensions to built in classes/modules}
  s.email = %q{me@talatlas.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "koalemos.gemspec",
     "lib/koalemos.rb",
     "lib/koalemos/beginning_of_day.rb",
     "lib/koalemos/blank.rb",
     "lib/koalemos/commaify.rb",
     "lib/koalemos/friendly_time.rb",
     "lib/koalemos/full.rb",
     "lib/koalemos/hash_union.rb",
     "lib/koalemos/num_to_time.rb",
     "lib/koalemos/odd.rb",
     "lib/koalemos/rand.rb",
     "lib/koalemos/round.rb",
     "lib/koalemos/symbol_to_proc.rb",
     "lib/koalemos/try.rb",
     "lib/koalemos/uniq_by.rb",
     "spec/koalemos_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/Talby/koalemos}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A bunch of small extensions to built in classes/modules}
  s.test_files = [
    "spec/koalemos_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end

