require 'rails_helper'

RSpec.describe LearningProposition, type: :model do
  context "Should not create Learning Proposition" do
    it 'with less than 2 attendees' do
      learning_proposition = create(:learning_proposition_1)
      learning_proposition.min_attendees = 1
      expect(learning_proposition.save).to be false
    end

    it 'without password' do
      learning_proposition = create(:learning_proposition_1)
      learning_proposition.password = nil
      expect(learning_proposition.save).to be false
    end

    it 'Should not delete Learning Proposition without password' do
      learning_proposition = create(:learning_proposition_1)
      expect(learning_proposition.safe_destroy(nil)).to be false
    end
  end

  context "When listing Propositions" do
    it "filter open Propositions" do
      create(:learning_proposition_1)
      create(:learning_proposition_2)
      create(:learning_proposition_3)
      proposition_4=create(:learning_proposition_4)
      expect(LearningProposition.find_open).to eq [proposition_4]
    end
    it "filter close Propositions" do
      proposition_1=create(:learning_proposition_1)
      proposition_2=create(:learning_proposition_2)
      proposition_3=create(:learning_proposition_3)
      create(:learning_proposition_4)
      expect(LearningProposition.find_close).to eq [proposition_1,proposition_2,proposition_3]
    end
  end
end
