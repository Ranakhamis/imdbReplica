class AddParentalGuidanceRateToMovie < ActiveRecord::Migration[6.1]
  def change
      add_column :movies, :parental_guidance_rate, :string
  end
end
