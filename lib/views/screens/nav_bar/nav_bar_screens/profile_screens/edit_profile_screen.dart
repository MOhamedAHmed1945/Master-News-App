import 'package:flutter/material.dart';
import 'package:master/views/Screens/nav_bar/nav_bar_screens/profile_screens/profile_screen.dart';
import 'package:provider/provider.dart';
import '../../../../../helper/hive_function_box.dart';
import '../../../../../models/model_provider.dart';
import '../../../../../models/profile_user_models/profile_hive_model.dart';
import '../../../../widgets/custom_TextFormFiled.dart';

class EditeProfileScreen extends StatefulWidget {
  const EditeProfileScreen({Key? key}) : super(key: key);
  static String editeProfileRoute = 'editeProfileRoute';
  @override
  State<EditeProfileScreen> createState() => _EditeProfileScreenState();
}

class _EditeProfileScreenState extends State<EditeProfileScreen> {
  // TextEditingController emailController = TextEditingController();

  // TextEditingController userNameController = TextEditingController();

  // TextEditingController countryController = TextEditingController();

  // TextEditingController addressController = TextEditingController();

  // TextEditingController phoneNumberController = TextEditingController();

  // TextEditingController ageController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  late final String addEmail,
      addUserName,
      addCountry,
      addAddress,
      addPhoneNumber,
      addAge;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ModelProvider>(context, listen: false);
    final box = HiveFunctionBox.getProfileBox();
    late ProfileHiveModel newData;
    return Form(
      key: formKey,
      child: Container(
        color: Colors.blue[800],
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  //Navigator.pop(context);
                  Navigator.pushNamedAndRemoveUntil(context,
                          ProfileScreen.profileRoute, (route) => false);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
              ),
              title: const Text(
                'Edite Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w600,
                ),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      newData = ProfileHiveModel(
                        email: addEmail,
                        userName: addUserName,
                        country: addCountry,
                        address: addAddress,
                        phoneNumber: addPhoneNumber,
                        age: addAge,
                      );
                      box.add(newData);
                      Navigator.pushNamedAndRemoveUntil(context,
                          ProfileScreen.profileRoute, (route) => false);
                    } else {
                      autoValidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  icon: const Icon(
                    Icons.save_alt,
                    size: 30,
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/Education.jpeg'),
                          radius: 80,
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 140,
                  right: 120,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () async {
                        //await provider.deleteProfile(newData);
                      },
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: Container(
              padding: const EdgeInsets.only(
                top: 20,
                right: 20,
                left: 20,
              ),
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            CustomTextFormFiled(
                              text: 'Email',
                              icon: Icons.email_outlined,
                              //controller: emailController,provider
                              controller: provider.emailController,
                              textInputType: TextInputType.emailAddress,
                              onSaved: (value) {
                                addEmail = value!;
                                // editProfileModel?.email = value!;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'This Field Is Required';
                                }
                                if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$')
                                    .hasMatch(value)) {
                                  return 'Please Enter a Valid Email';
                                }
                                return null;
                              },
                            ),
                            CustomTextFormFiled(
                              text: 'User Name',
                              icon: Icons.person_outline_outlined,
                              controller: provider
                                  .userNameController, //userNameController,
                              textInputType: TextInputType.text,
                              onSaved: (value) {
                                addUserName = value!;
                                //editProfileModel?.userName = value!;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Your User Name';
                                }
                                if (value.length <= 3) {
                                  return 'User Name Up < 3 Char';
                                }
                                return null;
                              },
                            ),
                            CustomTextFormFiled(
                              text: 'Country',
                              icon: Icons.flag_circle_outlined,
                              controller: provider
                                  .countryController, // countryController,
                              textInputType: TextInputType.text,
                              onSaved: (value) {
                                addCountry = value!;
                                //editProfileModel?.country = value!;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Your Country';
                                }
                                if (value.length <= 2) {
                                  return 'Country Up < 2 Char';
                                }
                                return null;
                              },
                            ),
                            CustomTextFormFiled(
                              text: 'Address',
                              icon: Icons.apartment_outlined,
                              controller: provider
                                  .addressController, //addressController,
                              textInputType: TextInputType.text,
                              onSaved: (value) {
                                addAddress = value!;
                                //editProfileModel?.address = value!;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Your Address';
                                }
                                if (value.length == 12) {
                                  return 'Address  12 Address';
                                }
                                return null;
                              },
                            ),
                            CustomTextFormFiled(
                              text: 'Phone Number',
                              icon: Icons.phone_android_outlined,
                              controller: provider
                                  .phoneNumberController, //phoneNumberController,
                              textInputType: TextInputType.phone,
                              onSaved: (value) {
                                addPhoneNumber = value!;
                                // editProfileModel?.phoneNumber = value! as int;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Your Phone Number';
                                }
                                if (value.length > 12) {
                                  return 'Phone Number 12 Number';
                                }
                                return null;
                              },
                            ),
                            CustomTextFormFiled(
                              text: 'Age',
                              icon: Icons.hdr_auto_sharp,
                              controller:
                                  provider.ageController, //ageController,
                              textInputType: TextInputType.number,
                              onSaved: (value) {
                                addAge = value!;
                                //editProfileModel?.age = value! as int;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Your Age';
                                }
                                if (value.length == 1) {
                                  return 'Age 2 Number';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
