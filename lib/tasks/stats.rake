require 'csv'
namespace :stats do
  desc "TODO"
  task seed_stats: :environment do
  	 

      Show.destroy_all
      Movie.destroy_all


    CSV.foreach("lib/assets/movies.csv", :headers =>true) do |row |
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
     Movie.create!(
      title: row[2],
      director: row[3],
      release_year: row[7],
      rating: row[8],
      listed_in: row[10]
      
    )
    end
   



    CSV.foreach("lib/assets/shows.csv", :headers =>true, :encoding => 'ISO-8859-1') do |row|
# this will break where DeployID includes (1) you could pull this string out
# strip off the (1) from the ID or skip the row.


      puts row.inspect #just so that we know the file's being read
    
     
      

        row_temp= row[0]



       
        result = Movie.where(["title= ?", row_temp])
            if result==true
            result=result[0]
            result=result.id

        else

        	result=""
end

    
        Show.create!(
        movie_id: result,
        title: row[0],
        ratingLevel: row[2]
        
  
        )
     
    end
end



end