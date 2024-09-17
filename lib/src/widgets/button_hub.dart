import 'package:flutter/material.dart';

sealed class ButtonClick { 
  final String value;

  ButtonClick(this.value);
}

class CommonButtonClick extends ButtonClick {
  CommonButtonClick(super.value);
}

class EqualsButtonClick extends ButtonClick {
  EqualsButtonClick(super.value);
}

class ClearButtonClick extends ButtonClick {
  ClearButtonClick(super.value);
}

class ClearEntryButtonClick extends ButtonClick {
  ClearEntryButtonClick(super.value);
}


class ButtonHub extends StatelessWidget {

  final void Function(ButtonClick click)? onButtonClick;

  const ButtonHub({super.key, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
       Button(
        value: '',
        color: Colors.black,
        child: const Icon(Icons.delete_outline, color: Colors.white, size: 35),
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(ClearButtonClick(value));
            }
          },
        ),
        Button(
          value: '',
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
        Button(
          value: '',
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
        Button(
          value: '',
          color: Colors.black,
          child: const Icon(Icons.backspace, color: Colors.white, size: 35),
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(ClearEntryButtonClick(value));
            }
          },
        ),
        Button(
          value: '7',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
         Button(
          value: '8',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
         Button(
          value: '9',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
         Button(
          value: '/',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
          Button(
          value: '4',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
          Button(
          value: '5',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
          Button(
          value: '6',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
          Button(
          value: '*',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
          Button(
          value: '1',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
          Button(
          value: '2',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
          Button(
          value: '3',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
          Button(
          value: '+',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
          Button(
          value: '-',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
          Button(
          value: '0',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
          Button(
          value: '.',
          color: Colors.black,
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(CommonButtonClick(value));
            }
          },
        ),
             Button(
          value: '=',
          color: const Color.fromARGB(255, 255, 0, 0),
          onTap: (value) {
            if (onButtonClick != null) {
              onButtonClick!(EqualsButtonClick(value));
            }
          },
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String value;
  final Color? color;
  final void Function(String value)? onTap;
  final Widget? child; 

  const Button({
    super.key,
    required this.value,
    this.color,
    this.onTap,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: InkWell(
        onTap: onTap == null ? null : () => onTap!(value), 
         child: Center(
          child: value.isEmpty ? 
            child : 
            Text(
              value,
              style: Theme.of(context).textTheme.displaySmall,
            ),
        ),
      ),
    );
  }
}