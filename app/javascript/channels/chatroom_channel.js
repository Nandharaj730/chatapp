import consumer from "./consumer"

let url = window.location.href
let room_id = parseInt( url.substring(url.search("rooms/") + 6) );

if(url.indexOf("rooms/") != -1){

  consumer.subscriptions.create({"channel": "ChatroomChannel", "room_id": room_id}, {
    connected() {
      console.log(`Subscribed to ${room_id}`)
      // Called when the subscription is ready for use on the server
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received(data) {
      document.querySelector("ul#message-container").insertAdjacentHTML("beforeend",
      "<li class='list-group-item'><p><b>"+data.from+" : </b>"+data.context+"</p></li>")
    }
  });

}