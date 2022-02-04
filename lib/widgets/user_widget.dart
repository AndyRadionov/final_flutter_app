import 'package:final_flutter_app/model/user.dart';
import 'package:flutter/material.dart';

extension UserWidget on User {
  Widget userWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Theme
              .of(context)
              .primaryColor
              .withOpacity(0.25),
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(flex: 6, child: Text(name, style: Theme
                  .of(context)
                  .textTheme
                  .headline6, textAlign: TextAlign.left)),
              Expanded(flex: 1, child: Text("ID:", style: Theme
                  .of(context)
                  .textTheme
                  .headline5, textAlign: TextAlign.right)),
              Expanded(flex: 1, child: Text('$id', style: Theme
                  .of(context)
                  .textTheme
                  .headline5, textAlign: TextAlign.right)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column( //Left Column
                  children: [
                    SizedBox(
                        height: 15,
                        child: Container(alignment: Alignment.topRight,
                            child: Text("Логин:", style: Theme
                                .of(context)
                                .textTheme
                                .bodyText2,))
                    ),
                    SizedBox(
                        height: 15,
                        child: Container(alignment: Alignment.topRight,
                            child: Text("Email:", style: Theme
                                .of(context)
                                .textTheme
                                .bodyText2,))
                    ),
                    SizedBox(
                        height: 15,
                        child: Container(alignment: Alignment.topRight,
                            child: Text("Телефон:", style: Theme
                                .of(context)
                                .textTheme
                                .bodyText2,))
                    ),
                    SizedBox(
                        height: 25,
                        child: Container(alignment: Alignment.topRight,
                            child: Text("www:", style: Theme
                                .of(context)
                                .textTheme
                                .bodyText2,))
                    ),
                    SizedBox(
                        height: 55,
                        child: Container(alignment: Alignment.topRight,
                            child: Text("Компания:", style: Theme
                                .of(context)
                                .textTheme
                                .bodyText2,))
                    ),
                    SizedBox(
                        height: 40,
                        child: Container(alignment: Alignment.topRight,
                            child: Text("Адрес:", style: Theme
                                .of(context)
                                .textTheme
                                .bodyText2,))
                    ),
                    SizedBox(
                        height: 15,
                        child: Container(alignment: Alignment.topRight,
                            child: Text("Геометка:", style: Theme
                                .of(context)
                                .textTheme
                                .bodyText2,))
                    ),

                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 6,
                child: Column( //Right Column
                  children: [
                    SizedBox(
                        height: 15,
                        child: Container(alignment: Alignment.topLeft,
                            child: Text(username, style: Theme
                                .of(context)
                                .textTheme
                                .bodyText2,))
                    ),
                    SizedBox(
                        height: 15,
                        child: Container(alignment: Alignment.topLeft,
                            child: Text(email, style: Theme
                                .of(context)
                                .textTheme
                                .bodyText2,))
                    ),
                    SizedBox(
                        height: 15,
                        child: Container(alignment: Alignment.topLeft,
                            child: Text(phone, style: Theme
                                .of(context)
                                .textTheme
                                .bodyText2,))
                    ),
                    SizedBox(
                        height: 25,
                        child: Container(alignment: Alignment.topLeft,
                            child: Text(website, style: Theme
                                .of(context)
                                .textTheme
                                .bodyText2,))
                    ),
                    SizedBox(
                        height: 55,
                        child: Container(alignment: Alignment.topLeft,
                            child: Text('${company.name}\n"${company
                                .catchPhrase}"\n${company.bs}', style: Theme
                                .of(context)
                                .textTheme
                                .bodyText2,))
                    ),
                    SizedBox(
                        height: 40,
                        child: Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '${address.street}, ${address.suite}\n${address
                                  .zipcode} ${address.city}\n',
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyText2,)
                        )
                    ),
                    SizedBox(
                        height: 15,
                        child: Container(alignment: Alignment.topLeft,
                            child: Text(
                              '${address.geo.lat}, ${address.geo.lng}',
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyText2,))
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
