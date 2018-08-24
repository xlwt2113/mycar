json.extract! wx_user, :id, :name, :mobile, :wx_name, :money, :created_at, :updated_at
json.url wx_user_url(wx_user, format: :json)
