step '���[�U�[�Ǘ��̈ꗗ��ʂ��J��' do
  visit '/users'
end

step '��ʂ�ڎ�' do
  save_and_open_page
end

step ':name �����N���N���b�N����' do |name|
  first(:link, name).click
end

step ':name �{�^�����N���b�N����' do |name|
  first(:button, name).click
end

step '���[�U�[�Ǘ��̐V�K�o�^��ʂ��\�������' do
  current_path = URI.parse(current_url).path
  expect(current_path).to eq '/users/new'
end

step '���[�U�[�Ǘ��̏ڍ׉�ʂ��\�������' do
  current_path = URI.parse(current_url).path
  expect(current_path).to eq "/users/#{User.last.id}"
end

step '���[�U�[�Ǘ��̐V�K�o�^��ʂ��J��' do
  visit '/users/new'
end

step ':field �� :value �Ɠ��͂���' do |field, value|
  fill_in(field, :with => value)
end
