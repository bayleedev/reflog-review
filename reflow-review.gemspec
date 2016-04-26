Gem::Specification.new do |s|
  s.authors = 'Blaine Schmeisser'
  s.name = 'reflog-review'
  s.email = 'blainesch@gmail.com'
  s.homepage = 'https://github.com/blainesch/reflog-review'
  s.version = '0.0.2'
  s.summary = 'Easily review your reflog and recover commits.'
  s.description = 'You never lose a commit in GIT, but sometimes it is harder then it should be to recover it. This tool allows you easily review commits in the reflog one at a time.'
  s.licenses = ['MIT']
  s.require_paths = ['lib', 'bin']
  s.files = `git ls-files`.split("\n")
  s.has_rdoc = false
  s.executables << 'reflog-review'
  s.add_dependency 'colorize'
  s.add_development_dependency 'pry'
end
