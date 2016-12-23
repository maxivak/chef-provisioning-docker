$:.unshift(File.dirname(__FILE__) + '/lib')
require 'chef/provisioning/docker_driver/version'

Gem::Specification.new do |s|
  s.name = 'chef-provisioning-docker'
  s.version = Chef::Provisioning::DockerDriver::VERSION
  s.platform = Gem::Platform::RUBY
  s.extra_rdoc_files = ['README.md', 'LICENSE' ]
  s.summary = 'Provisioner for creating Docker containers in Chef Provisioning.'
  s.description = s.summary
  s.author = 'MAx Ivak, Tom Duffield'
  s.email = 'maxivak@gmail.com'
  s.homepage = 'https://github.com/maxivak/chef-provisioning-docker'

  s.add_dependency 'chef'
  s.add_dependency 'chef-provisioning', '>= 2.0', '< 3.0'
  s.add_dependency 'docker-api', '~> 1.26', '>= 1.26.2'
  s.add_dependency 'minitar'
  s.add_dependency 'sys-proctable'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'github_changelog_generator'

  s.bindir       = "bin"
  s.executables  = %w( )

  s.require_path = 'lib'
  s.files = %w(Gemfile Rakefile LICENSE README.md) + Dir.glob("*.gemspec") +
      Dir.glob("{distro,lib,tasks,spec}/**/*", File::FNM_DOTMATCH).reject {|f| File.directory?(f) }
end
