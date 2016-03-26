require 'rails_helper'

RSpec.describe Comic, type: :model do
  before { @comic = FG.build(:comic) }

  subject { @comic }

  it { expect(subject).to respond_to(:asin) }
  it { expect(subject).to respond_to(:title) }
  it { expect(subject).to respond_to(:image_path) }
  it { expect(subject).to respond_to(:author) }
  it { expect(subject).to respond_to(:publisher) }

  describe Comic, '#asin が空の場合' do
    before { subject.asin = ' ' }
    specify 'validationに失敗すること' do
      expect(subject).not_to be_valid
    end
  end

  describe Comic, '#asin が空でない場合' do
    before { subject.asin = 'a' }
    specify 'validationに成功すること' do
      expect(subject).to be_valid
    end
  end

  describe Comic, '#image_path が空の場合' do
    before { subject.image_path = ' ' }
    specify 'validationに失敗すること' do
      expect(subject).not_to be_valid
    end
  end

  describe Comic, '#image_path が空でない場合' do
    before { subject.image_path = 'a' }
    specify 'validationに成功すること' do
      expect(subject).to be_valid
    end
  end

  describe Comic, '#title が空の場合' do
    before { subject.title = ' ' }
    specify 'validationに失敗すること' do
      expect(subject).not_to be_valid
    end
  end

  describe Comic, '#title が空でない場合' do
    before { subject.title = 'a' }
    specify 'validationに成功すること' do
      expect(subject).to be_valid
    end
  end

  describe Comic, '#author がnilの場合' do
    before { subject.author = nil }
    specify 'validationに失敗すること' do
      expect(subject).not_to be_valid
    end
  end

  describe Comic, '#publisher がnilの場合' do
    before { subject.publisher = nil }
    specify 'validationに失敗すること' do
      expect(subject).not_to be_valid
    end
  end
end
