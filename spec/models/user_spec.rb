require 'rails_helper'

describe User do
  context 'not input' do
    subject { User.create }
    it { should_not be_valid}
    it { expect(subject.errors[:name].size).to eq 1 }
    it { expect(subject.errors[:email].size).to eq 1 }
  end

  context 'name over' do
    subject { User.create(name: 'aaaaaaaaaabbbbbbbbbbc',email: 'aaaa@willway.jp') }
    it { should_not be_valid }
    it { expect(subject.errors[:name].size).to eq 1 }
    it { expect(subject.errors[:email].size).to eq 0 }
  end

  context 'email over' do
    subject { User.create(name: 'taro',email: 'aaaaaaaaaabbbbbbbbbbcccccccccc@willway.jp') }
    it { should_not be_valid }
    it { expect(subject.errors[:name].size).to eq 0 }
    it { expect(subject.errors[:email].size).to eq 1 }
  end

  context 'correct' do
    subject { User.create(name: 'taro',email: 'aaaa@willway.jp') }
    it { should be_valid }
  end
end