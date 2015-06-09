module TGRedis
  def tradegecko
    @tradegecko ||= Redis.new(url: ENV["TG_REDIS_URL"])
  end
end

Redis.send(:extend, TGRedis)
