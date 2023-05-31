require 'rails_helper'

RSpec.describe Project, type: :model do
  describe 'generate_slug callback' do
    let(:user) { create(:user) }
    let(:project) { Project.create(user: user, name: 'example example', url: 'example.com') }

    context 'when the project is being created' do
      it 'generates a slug' do
        expect(project.reload.slug).to eq('example-example')
      end
    end

    context 'when the project name is updated' do
      before { project.update!(name: 'something different') }
      it 'does not generate a new slug' do
        expect(project.reload.slug).to eq('example-example')
      end
    end
  end
end
