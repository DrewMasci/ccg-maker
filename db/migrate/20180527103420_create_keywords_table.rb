class CreateKeywordsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :keywords do |t|
    end

    ##
    #the columns were added after the table creation because I couldn't work out
    #how to create them within the table creation. However I did work it out
    #with the next migration but I chose to leave these here as an examples
    #of the different was of performing the same task.
    
    add_column :keywords, :keyword_name, :string
    add_column :keywords, :keyword_description, :string
  end
end
