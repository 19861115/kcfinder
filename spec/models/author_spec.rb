require 'rails_helper'

RSpec.describe Author, type: :model do
  before { @author = FG.build(:author) }

  subject { @author }

  it { expect(subject).to respond_to(:name) }
  it { expect(subject).to respond_to(:comics) }

  describe Author, '#name が空の場合' do
    before { subject.name = ' ' }
    specify 'validationに失敗すること' do
      expect(subject).not_to be_valid
    end
  end

  describe Author, '#name が空でない場合' do
    before { subject.name = 'a' }
    specify 'validationに成功すること' do
      expect(subject).to be_valid
    end
  end
end
