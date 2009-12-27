# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{koalemos}
  s.version = "0.0.2"

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
     ".yardoc/checksums",
     ".yardoc/objects/Array.dat",
     ".yardoc/objects/Enumerable.dat",
     ".yardoc/objects/Float.dat",
     ".yardoc/objects/Hash.dat",
     ".yardoc/objects/Koalem.dat",
     ".yardoc/objects/Koalem/Rand.dat",
     ".yardoc/objects/Koalem/Rand/Array.dat",
     ".yardoc/objects/Koalem/Rand/Array/pick_21_i.dat",
     ".yardoc/objects/Koalem/Rand/Array/pick_i.dat",
     ".yardoc/objects/Koalem/Rand/Array/pick_index_21_i.dat",
     ".yardoc/objects/Koalem/Rand/Array/pick_index_i.dat",
     ".yardoc/objects/Koalem/Rand/Array/shuffle_21_i.dat",
     ".yardoc/objects/Koalem/Rand/Array/shuffle_i.dat",
     ".yardoc/objects/Koalem/Rand/Enumerable_.dat",
     ".yardoc/objects/Koalem/Rand/Enumerable_/each_random_i.dat",
     ".yardoc/objects/Koalem/Rand/Enumerable_/map_random_i.dat",
     ".yardoc/objects/Koalem/Rand/Enumerable_/pick_i.dat",
     ".yardoc/objects/Koalem/Rand/Enumerable_/shuffle_i.dat",
     ".yardoc/objects/Koalem/Rand/Hash.dat",
     ".yardoc/objects/Koalem/Rand/Hash/pick_21_i.dat",
     ".yardoc/objects/Koalem/Rand/Hash/pick_i.dat",
     ".yardoc/objects/Koalem/Rand/Hash/pick_key_21_i.dat",
     ".yardoc/objects/Koalem/Rand/Hash/pick_key_i.dat",
     ".yardoc/objects/Koalem/Rand/Hash/pick_value_21_i.dat",
     ".yardoc/objects/Koalem/Rand/Hash/pick_value_i.dat",
     ".yardoc/objects/Koalem/Rand/Hash/shuffle_hash_21_i.dat",
     ".yardoc/objects/Koalem/Rand/Hash/shuffle_hash_i.dat",
     ".yardoc/objects/Koalem/Rand/Hash/shuffle_hash_pairs_i.dat",
     ".yardoc/objects/Koalem/Rand/String.dat",
     ".yardoc/objects/Koalem/Rand/String/pick_byte_21_i.dat",
     ".yardoc/objects/Koalem/Rand/String/pick_byte_i.dat",
     ".yardoc/objects/Koalem/Rand/String/pick_char_21_i.dat",
     ".yardoc/objects/Koalem/Rand/String/pick_char_i.dat",
     ".yardoc/objects/Koalem/Rand/String/pick_index_21_i.dat",
     ".yardoc/objects/Koalem/Rand/String/pick_index_i.dat",
     ".yardoc/objects/Koalem/Rand/String/shuffle_chars_21_i.dat",
     ".yardoc/objects/Koalem/Rand/String/shuffle_chars_i.dat",
     ".yardoc/objects/Koalemos.dat",
     ".yardoc/objects/Koalemos/Blank.dat",
     ".yardoc/objects/Koalemos/Blank/Array.dat",
     ".yardoc/objects/Koalemos/Blank/Array/included_c.dat",
     ".yardoc/objects/Koalemos/Blank/FalseClass.dat",
     ".yardoc/objects/Koalemos/Blank/FalseClass/blank_3F_i.dat",
     ".yardoc/objects/Koalemos/Blank/Hash.dat",
     ".yardoc/objects/Koalemos/Blank/Hash/included_c.dat",
     ".yardoc/objects/Koalemos/Blank/NilClass.dat",
     ".yardoc/objects/Koalemos/Blank/NilClass/blank_3F_i.dat",
     ".yardoc/objects/Koalemos/Blank/Numeric.dat",
     ".yardoc/objects/Koalemos/Blank/Numeric/blank_3F_i.dat",
     ".yardoc/objects/Koalemos/Blank/Object.dat",
     ".yardoc/objects/Koalemos/Blank/Object/blank_3F_i.dat",
     ".yardoc/objects/Koalemos/Blank/Object/present_3F_i.dat",
     ".yardoc/objects/Koalemos/Blank/String.dat",
     ".yardoc/objects/Koalemos/Blank/String/blank_3F_i.dat",
     ".yardoc/objects/Koalemos/Blank/TrueClass.dat",
     ".yardoc/objects/Koalemos/Blank/TrueClass/blank_3F_i.dat",
     ".yardoc/objects/Koalemos/FriendlyTime.dat",
     ".yardoc/objects/Koalemos/FriendlyTime/friendly_i.dat",
     ".yardoc/objects/Koalemos/Full.dat",
     ".yardoc/objects/Koalemos/Full/full_3F_i.dat",
     ".yardoc/objects/Koalemos/HashUnion.dat",
     ".yardoc/objects/Koalemos/HashUnion/_7C_i.dat",
     ".yardoc/objects/Koalemos/NumToTime.dat",
     ".yardoc/objects/Koalemos/NumToTime/ago_i.dat",
     ".yardoc/objects/Koalemos/NumToTime/day_i.dat",
     ".yardoc/objects/Koalemos/NumToTime/days_i.dat",
     ".yardoc/objects/Koalemos/NumToTime/from_now_i.dat",
     ".yardoc/objects/Koalemos/NumToTime/hour_i.dat",
     ".yardoc/objects/Koalemos/NumToTime/hours_i.dat",
     ".yardoc/objects/Koalemos/NumToTime/minute_i.dat",
     ".yardoc/objects/Koalemos/NumToTime/minutes_i.dat",
     ".yardoc/objects/Koalemos/NumToTime/month_i.dat",
     ".yardoc/objects/Koalemos/NumToTime/months_i.dat",
     ".yardoc/objects/Koalemos/NumToTime/to_time_i.dat",
     ".yardoc/objects/Koalemos/NumToTime/week_i.dat",
     ".yardoc/objects/Koalemos/NumToTime/weeks_i.dat",
     ".yardoc/objects/Koalemos/NumToTime/year_i.dat",
     ".yardoc/objects/Koalemos/NumToTime/years_i.dat",
     ".yardoc/objects/Koalemos/Odd.dat",
     ".yardoc/objects/Koalemos/Odd/odd_3F_i.dat",
     ".yardoc/objects/Koalemos/RoundTo.dat",
     ".yardoc/objects/Koalemos/RoundTo/round_to_i.dat",
     ".yardoc/objects/Koalemos/ToProc.dat",
     ".yardoc/objects/Koalemos/ToProc/to_proc_i.dat",
     ".yardoc/objects/Koalemos/UniqBy.dat",
     ".yardoc/objects/Koalemos/UniqBy/uniq_by_i.dat",
     ".yardoc/objects/Numeric.dat",
     ".yardoc/objects/Object.dat",
     ".yardoc/objects/Symbol.dat",
     ".yardoc/objects/Time.dat",
     ".yardoc/objects/root.dat",
     ".yardoc/proxy_types",
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

