namespace :db do
  desc "Rebuild system"
  # task :del do 
  # 	if (Rails.env == "development")
	 #  	rm_rf "public/images/"
  #     # rm_rf "public/assets/"
  #     rm_rf "public/system/"
  #   end
  # end
  # task :clean do 
  #     rm_rf "public/assets/"
  # end
  
  if (Rails.env == "development")
    task :reb => ["tmp:clear", "log:clear" , "db:drop", "db:create", "db:migrate", "db:seed","assets:clean", "assets:precompile"]
  end
  task :on => ["tmp:clear", "assets:clean", "db:migrate", "assets:precompile"]
end