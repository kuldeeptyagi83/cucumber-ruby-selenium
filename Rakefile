require 'cucumber'
require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:cucumber) do |t|
  t.profile = 'default'
end

task :default => :cucumber


# desc 'Run Cucumber features and generate an HTML summary, JUnit XML and a plain text log'
Cucumber::Rake::Task.new(:features) do |t|
t.cucumber_opts = [
    "--no-color",
    "--format progress -o log/features.log",
    "--format junit    -o log/",
    "--format html     -o log/features.html",
    "--format pretty"]
end
