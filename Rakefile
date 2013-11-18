task :rb_file, [:file_name] => :bundle do |t, args|
  sh "ruby #{args.file_name}"
end

desc "Bundle gems"
task :bundle do
  sh "bundle install"
end
