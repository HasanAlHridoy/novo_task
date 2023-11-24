import 'package:flutter/material.dart';
import 'package:novo/widgets/common_widgets.dart';

import '../../themes.dart';

class ContactScreenPopUp extends StatefulWidget {
  const ContactScreenPopUp({Key? key}) : super(key: key);

  @override
  State<ContactScreenPopUp> createState() => _ContactScreenPopUpState();
}

class _ContactScreenPopUpState extends State<ContactScreenPopUp> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: kColorPrimary.withOpacity(0.7),
          width: double.infinity,
          height: double.infinity,
        ),
        AlertDialog(
          insetPadding: const EdgeInsets.all(20),
          shape: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          content: SizedBox(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Contact Us',
                  style: kStyleTextW500CGR.copyWith(color: Colors.black87, fontSize: 18),
                ),
                const SizedBox(height: 15),
                Text(
                  'Mobile Number',
                  style: kStyleTextW500CGR.copyWith(color: kColorGrey.shade600, fontSize: 18),
                ),
                Text(
                  '+880 15454524545',
                  style: kStyleTextW500CGR.copyWith(color: Colors.black87, fontSize: 18),
                ),
                const SizedBox(height: 15),
                Text(
                  'Email Id',
                  style: kStyleTextW500CGR.copyWith(color: kColorGrey.shade600, fontSize: 18),
                ),
                Text(
                  'novoagro@gmail.com',
                  style: kStyleTextW500CGR.copyWith(color: Colors.black87, fontSize: 18),
                ),
                const SizedBox(height: 15),
                Text(
                  'Address',
                  style: kStyleTextW500CGR.copyWith(color: kColorGrey.shade600, fontSize: 18),
                ),
                Text(
                  'Mohammadpur\nDhaka',
                  textAlign: TextAlign.center,
                  style: kStyleTextW500CGR.copyWith(color: Colors.black87, fontSize: 18),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 8,
                  child: const Row(
                    children: [
                      Expanded(child: SizedBox.shrink()),
                      Expanded(
                        flex: 4,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CommonWidgets(
                              imgUrl: 'assets/images/sms.png',
                              isNetwork: false,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 4,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CommonWidgets(
                              imgUrl: 'assets/images/call.png',
                              isNetwork: false,
                            ),
                          ),
                        ),
                      ),
                      Expanded(child: SizedBox.shrink()),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 8,
                  child: const Row(
                    children: [
                      Expanded(child: SizedBox.shrink()),
                      Expanded(
                        flex: 4,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CommonWidgets(
                              imgUrl: 'assets/images/inbox.png',
                              isNetwork: false,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 4,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CommonWidgets(
                              imgUrl: 'assets/images/wapp.png',
                              isNetwork: false,
                            ),
                          ),
                        ),
                      ),
                      Expanded(child: SizedBox.shrink()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
