import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  // フロント側からサーバー側を監視できているか確認できた時に動く関数
  connected() {
    console.log("フロント側からの監視")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
  }
});
