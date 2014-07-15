namespace :metrics do
  desc "Run Rails Best Practices"
  task :rbp do
    system("bundle exec rails_best_practices -f html --with-github jjlangholtz/recifree")
    system("open rails_best_practices_output.html")
  end
end
