
begin
  require 'bones'
rescue LoadError
  abort '### Please install the "bones" gem ###'
end

task :default => 'test:run'
task 'gem:release' => 'test:run'

Bones {
  name     'beatwhale'
  authors  'Digital Natives Kft.'
  email    'info@digitalnatives.hu'
  url      'http://www.digitalnatives.hu'
}

