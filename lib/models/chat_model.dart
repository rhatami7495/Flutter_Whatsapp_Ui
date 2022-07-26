
class ChatModel{

  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({required this.name,required this.message,
    required this.time,required this.avatarUrl});

}

List<ChatModel> fakeData= [
  ChatModel(name:"Reza1",message: "Hiiiii 1",time: "06:06",avatarUrl: "https://pickaface.net/gallery/avatar/20120606_234509_1548_nice.png"),
  ChatModel(name:"Reza2",message: "Hiiiii 2",time: "07:07",avatarUrl: "https://cdn2.vectorstock.com/i/1000x1000/49/86/man-character-face-avatar-in-glasses-vector-17074986.jpg"),
  ChatModel(name:"Reza3",message: "Hiiiii 3",time: "08:08",avatarUrl: "https://basaschools.co.za/wp-content/uploads/2021/04/boy-avator.png"),
  ChatModel(name:"Reza4",message: "Hiiiii 4",time: "09:09",avatarUrl: "https://pickaface.net/gallery/avatar/20120606_234509_1548_nice.png"),
  ChatModel(name:"Reza5",message: "Hiiiii 5",time: "10:10",avatarUrl: "https://static.toiimg.com/thumb/resizemode-4,msid-76729536,width-1200,height-900/76729536.jpg"),
  ChatModel(name:"Reza6",message: "Hiiiii 6",time: "11:11",avatarUrl: "https://cdn1.vectorstock.com/i/1000x1000/26/45/boy-face-avatar-profile-picture-vector-25762645.jpg"),
  ChatModel(name:"Reza7",message: "Hiiiii 7",time: "12:12",avatarUrl: "https://pickaface.net/gallery/avatar/unr_niceguy_180217_2320_7idsqs59.png"),
] ;