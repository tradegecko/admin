class User < OpenStruct
  def self.from_omniauth(auth)
    self.new({
      id:         auth["uid"],
      name:       auth["info"]["name"],
      email:      auth["info"]["email"],
      account_id: auth["extra"]["raw_info"]["account_id"]
    })
  end

  def as_json(*args)
    table
  end

  def tradegecko_admin?
    account_id == 4
  end
end
