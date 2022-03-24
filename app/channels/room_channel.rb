class RoomChannel < ApplicationCable::Channel
  # サーバー側からフロント側を監視できているかを確認できた時に動くメソッド
  def subscribed
    5.times { puts "サーバー側からの監視" }
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
