require "#{MRUBY_ROOT}/lib/mruby/source"

MRuby::Gem::Specification.new('mruby-cmdr') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Giovanni Sakti'
  spec.version = '0.0.1'
  spec.add_dependency('mruby-print')
  spec.add_dependency('mruby-mtest')
end