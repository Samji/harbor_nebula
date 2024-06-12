namespace :import do
    desc "Import starter data from CSV"
    task starter_data: :environment do
      require 'csv'

      # Define an array of file paths
        csv_files = [
            { file: Rails.root.join('db/seeds/factions.csv'), model: Faction },
            { file: Rails.root.join('db/seeds/rarities.csv'), model: Rarity },
            { file: Rails.root.join('db/seeds/affinities.csv'), model: Affinity },
            { file: Rails.root.join('db/seeds/roles.csv'), model: Role }
        # Add more file paths as needed
        ]
  
        # Iterate over each file path and check if it exists
        csv_files.each do |csv_info|
            csv_file = csv_info[:file]
            model = csv_info[:model]

            unless File.exist?(csv_file)
            puts "CSV file not found: #{csv_file}"
            next
            end
    
            # Open the CSV file and start processing
            CSV.foreach(csv_file, headers: true) do |row|

                existing_record = model.find_by(name: row['Name'])

                if existing_record
                    puts "Skipping existing record: #{existing_record.inspect}"
                    next
                end

                # Add your import logic here for each model
                model.create!(
                    name: row['Name'],
                    # Add all necessary columns here
                )
            end
    
            puts "Starter data imported from #{csv_file} successfully!"
        end
    end
end