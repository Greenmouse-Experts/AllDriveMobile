import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:roadside_heroes_app/constants.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text("TERMS AND CONDITIONS"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "1.CONTRACTUAL RELATIONSHIP",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Theme.of(context).colorScheme.onBackground),
              ),
              addHeight(15),
              AutoSizeText.rich(
  TextSpan(
    children: [
      TextSpan(
        text: "AllDrive SOS, incorporated under the Companies Act, 2013, having its registered office at F-212, DLF NEW TOWN HEIGHTS, SECTOR 91, Garhi Harsaru, Gurugram, Haryana – 122505, operating under the trademarked name “GoMechanic”, provides holistic car services including maintenance, repair, etc. The use and access of our website www.gomechanic.in (“Website”), and our mobile applications “GoMechanic - Car Services, Battery & Tyre” (“Applications”), or any products or services in connection with the Application or Website (“Services”) shall be governed by these terms and conditions (“Terms”). The Website and Applications are together called the “Platform”.\n\n",
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
      TextSpan(
        text: "These terms constitute a legally binding and enforceable agreement between GoMechanic (“Company/we/us/our”) and its Users (“User/you/your”) and govern your use of the Platform to browse and/or avail the Services displayed by us on the Platform. By accessing and using our Services, you agree to be bound by these terms, establishing a contractual relationship between you and the Company. In case you do not agree to the terms, you may not use or access or stop your use or access of our Services. These Terms expressly supersede prior written agreements with you. The Company requests the User to carefully go through these terms & conditions (“Terms and Conditions” or “Terms”) prior to accessing the Platform or availing Services (as defined below) using the Platform.\n\n",
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
      TextSpan(
        text: "The Company reserves the right, in its sole discretion, to change, modify or amend the Terms for complying with the legal or regulatory framework and for other legitimate business purposes, at any time, and the Company will post the amended Terms at the domain of www.gomechanic.in/terms. It is your responsibility to review the Terms for any changes and you are encouraged to check the Terms frequently. The Company shall not be under an obligation to notify Users of any changes to the Terms and Conditions. If you continue to use the Platform, Content (as defined below) and/or Services after the updated Terms and Conditions have been published, it shall be deemed that you have read and understood and accept the updated Terms and Conditions. Any reference to Terms and Conditions, made herein shall refer to the latest version of the Terms and Conditions.\n\n",
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
      TextSpan(
        text: "No information provided on the Platform shall be considered a substitute for your independent investigation. These Terms are collectively an electronic record in terms of the Indian Contract Act, 1872; the Information Technology Act, 2000, the rules made thereunder; and the amended provisions pertaining to the electronic records in various other statutes as amended by the Information Technology Act, 2000. These Terms are generated by a computer system and do not require any digital or electronic signature.",
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
    ],
  ),
  softWrap: true,
),

              addHeight(15),
               Text(
                "2.SERVICES",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Theme.of(context).colorScheme.onBackground),
              ),
                            addHeight(15),

              AutoSizeText.rich(
   TextSpan(
    style: TextStyle(
      color: Theme.of(context).colorScheme.onBackground,
    ),
    children: [
      const TextSpan(
        text:
            "The Services constitute a technology platform that enables Users of the Company's Platform, provided as part of the Services, to arrange and schedule repair or maintenance services for your car with independent third-party providers. Once you submit a request, we may provide you with a list of possible service providers along with their experience information.\n\n",
      ),
      const TextSpan(
        text:
            "The Company also provides towing service to get your vehicle out of the situation and back on road on a chargeable basis.\n\n",
      ),
      const TextSpan(
        text:
            "You acknowledge that the Company does not provide any repair and maintenance services for its customers and that all such above stated services are provided by other independent third-party contractors who are not employed by the Company.\n\n",
      ),
      const TextSpan(
        text:
            "You acknowledge that even after accepting and/or confirming an appointment for service/repair of your car, the Company cannot guarantee its availability. At the time of your appointment request to the Company, the Company will make reasonable efforts to connect you with the independent third-party service provider so that you can avail automobile repair service at or near your location.\n\n",
      ),
      const TextSpan(
        text:
            "You acknowledge that the cost and time period for the services/repairs are estimated in accordance with your request and are proximate in nature.\n",
      ),
    ],
  ),
),


              addHeight(15),
              Text(
                "3.USE OF SERVICES",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Theme.of(context).colorScheme.onBackground),
              ),
                            addHeight(15),

              AutoSizeText.rich(
  TextSpan(
    children: [
      TextSpan(
        text:
            "You must create an account in order to use some of the features offered by the Platform. Use of any personal information you provide to us during the account creation process is governed by our Privacy Policy available on our app/website. You must keep your password confidential and you are solely responsible for maintaining the confidentiality and security of your account details, all changes and updates submitted through your account, and all activities that occur in connection with your account.\n\n",
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
      TextSpan(
        text:
            "Following sign-up, we will make certain Services available to you free of charge. The Services will include the ability to search for service providers for automotive repair or servicing work, the ability to view detailed profiles of service providers and their service prices and rating information, and the ability to post feedback and ratings in relation to any service provider you have used as a result of your use of the Platform. We reserve the right to add, change or remove Services from our Platform at any time, and may make certain Services chargeable at our discretion.\n\n",
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
      TextSpan(
        text:
            "You must only book a Service if you have a genuine requirement for the work detailed to be performed. You must only post feedback in relation to a service provider if you have availed Service from them as a result of your use of the Platform\n",
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
    ],
  ),
  softWrap: true,
),

              addHeight(15),
              Text(
                "4.SUPPORT",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Theme.of(context).colorScheme.onBackground),
              ),
                            addHeight(15),

                        AutoSizeText.rich(
  TextSpan(
    children: [
      TextSpan(
        text:
            "The Company offers an email as well as phone call-based support system along with an online knowledge pool of FAQs. In case you require any assistance or support, you may access support resources or contact our support by emailing at info@companyemail.com or calling our helpline at +01-1234567890 (Monday to Sunday between 7 am and 9 pm).\n\n",
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
      TextSpan(
        text:
            "The Company shall revert to every complaint at the earliest upon receipt of the complaint during the business days. Further, the Company shall take the best possible efforts to redress the complaint within 7 days of receipt of the complaint. Any suggestions by the Company regarding the use of the Services shall not be construed as a warranty.\n\n",
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
      TextSpan(
        text:
            "The User agrees and acknowledges that the Company shall address and attempt to resolve the complaint received in accordance with the standard policies and procedures adopted by the Company, the User's disapproval/discontent with the outcome/mode of redressal shall not be deemed to mean non-redressal of the complaint by the Company. Any suggestions by the Company regarding the use of the Service shall not be construed as a warranty.\n\n",
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
      TextSpan(
        text:
            "The Company shall take reasonable care and measures required for the safety of your car in our possession. In the event, the User's car is stolen while in the possession of the Company, the Company will take all reasonable measures and extend necessary support to the User for recovering their car, such as, promptly informing the User of the occurrence of the theft, immediately report the theft to the nearest police station, co-operate and aid the local authorities to recover the vehicle, etc.\n",
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
    ],
  ),
  softWrap: true,
),


            ],
          ),
        ),
      ),
    );
  }
}
