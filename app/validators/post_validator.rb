class PostValidator < ActiveModel::Validator
    def validate(record)
        unless record.title.includes("Won't Believe" "Secret" "Top [number]" "Guess")
            record.errors[:title] << "Must include Won't Believe, Secret, Top [number], or Guess"
        end
    end
end