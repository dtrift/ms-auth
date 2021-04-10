require './app/models/user'

Sequel.seed(:development) do
  def run
    User.create \
      name: 'admin',
      email: 'me@admin.com',
      password: 'Pa$$w0rd'
  end
end
