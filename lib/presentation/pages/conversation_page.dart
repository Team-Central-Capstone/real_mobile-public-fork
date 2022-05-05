import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:real/constants/app_constants.dart';
import 'package:real/constants/util.dart';
import 'package:real/logic/controllers/firestore_db.dart';
import 'package:real/logic/core/injection.dart';

class ConversationPage extends StatefulWidget {
  final String chatRoomId;
  final String fbId;
  final String name;

  const ConversationPage({
    Key? key,
    required this.chatRoomId,
    required this.fbId,
    required this.name,
  }) : super(key: key);

  @override
  State<ConversationPage> createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  late DatabaseMethods _firestoreDb;
  TextEditingController messageController = TextEditingController();

  Stream? chatMessageStream;
 final ScrollController _lvScrollCtrl = ScrollController();

  Widget chatMessageList() {
    if (chatMessageStream != null) {
      return StreamBuilder(
          stream: chatMessageStream,
          builder: (context, AsyncSnapshot snapshot) {
            return snapshot.hasData
                ? ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      return MessageTile(
                          snapshot.data.docs[index].data()["message"],
                          snapshot.data.docs[index].data()["sendBy"] ==
                              widget.fbId);
                    })
                : Container();
          });
    } else {
      return Container();
    }
  }

  sendMessage() {
    if (messageController.text.isNotEmpty) {
      Map<String, dynamic> messageMap = {
        "message": messageController.text,
        "sendBy": widget.fbId,
        "time": DateTime.now().millisecondsSinceEpoch
      };

      _firestoreDb.addConversationMessages(widget.chatRoomId, messageMap);
      messageController.text = '';
    }
  }

  @override
  void initState() {

    // Get singleton Database Methods instance
    _firestoreDb = getIt<DatabaseMethods>();

    _firestoreDb.getConversationMessages(widget.chatRoomId).then((value) {
      setState(() {
        chatMessageStream = value;
      });
    });


     WidgetsBinding.instance?.addPostFrameCallback((_) {
      _lvScrollCtrl.animateTo(
        _lvScrollCtrl.position.maxScrollExtent,
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn);
      });
    
     
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

     WidgetsBinding.instance?.addPostFrameCallback((_) {
      _lvScrollCtrl.animateTo(
        _lvScrollCtrl.position.maxScrollExtent,
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn);
      });
    
     
    
    return Container(
        // Background UI
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              topGradientColor,
              bottomGradientColor,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            transform: GradientRotation(3.14 / 4),
          ),
        ),
        child: Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ThemeData().colorScheme.copyWith(
                    primary: darkBlueColor,
                  ),
            ),
            child: Scaffold(
                appBar: AppBar(
                  title: Text(
                    widget.name,
                    style: GoogleFonts.pacifico(
                      textStyle: const TextStyle(
                          color: Colors.white70,
                          fontSize: 32,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  automaticallyImplyLeading: true,
                  leading: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        context.router.pop();
                      }),
                  centerTitle: true,
                  flexibleSpace: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          transform: GradientRotation(3.14 / 4),
                          colors: <Color>[
                            topGradientColor,
                            bottomGradientColor
                          ]),
                    ),
                  ),
                ),
                backgroundColor: Colors.transparent,
                body: SingleChildScrollView(
                  controller: _lvScrollCtrl,
                  child: Column(
                    children: [
                      chatMessageList(),
                      Container(
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 16),
                          color: const Color(0x54FFFFFF),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: messageController,
                                  // style: simpleTextStyle(),
                                  decoration: const InputDecoration(
                                      hintText: "Message ...",
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  sendMessage();
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                          colors: [
                                            Color(0x36FFFFFF),
                                            Color(0x0FFFFFFF)
                                          ],
                                          begin: FractionalOffset.topLeft,
                                          end: FractionalOffset.bottomRight),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.send,
                                      color: Colors.white54,
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ))));
  }
}

class MessageTile extends StatelessWidget {
  final String message;
  final bool isSendByCurrentUser;
  MessageTile(this.message, this.isSendByCurrentUser);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: isSendByCurrentUser ? 0 : 24,
          right: isSendByCurrentUser ? 24 : 0),
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: MediaQuery.of(context).size.width,
      alignment:
          isSendByCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: isSendByCurrentUser
                    ?
                    // : [const Color(0xff007EF4), const Color(0xff2A75BC)]
                    [
                        Color.fromARGB(120, 157, 85, 160),
                        Color.fromARGB(95, 160, 128, 128),
                      ]
                    : [darkBlueColor, bottomGradientColor]),
            borderRadius: isSendByCurrentUser
                ? const BorderRadius.only(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(23),
                    bottomLeft: Radius.circular(23))
                : const BorderRadius.only(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(23),
                    bottomRight: Radius.circular(23))),
        child: Text(
          message,
          style: GoogleFonts.adventPro(
            textStyle: const TextStyle(
                color: Colors.white70,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
