Gem::Specification.new do |s|
  s.name              = "resque-lock"
  s.version           = "1.0.0"
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "A Resque plugin for ensuring only one instance of your job is queued at a time.  This version sets the lock value with the current timestamp."
  s.homepage          = "http://github.com/ealdent/resque-lock"
  s.email             = "chris@ozmm.org"
  s.authors           = [ "Chris Wanstrath", "Ray Krueger", "Jason Adams" ]
  s.has_rdoc          = false

  s.files             = %w( README.md Rakefile LICENSE )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("test/**/*")

  s.description       = <<desc
A Resque plugin. If you want only one instance of your job
queued at a time, extend it with this module.  This version
sets the lock value to the current timestamp.

For example:

    require 'resque/plugins/lock'

    class UpdateNetworkGraph
      extend Resque::Plugins::Lock

      def self.perform(repo_id)
        heavy_lifting
      end
    end
desc
end
