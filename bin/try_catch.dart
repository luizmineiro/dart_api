//tratamento de exceções

void main() {
  print(stringToInt('d'));
}

int stringToInt(String text) {
  int value;
  try {
    value = int.parse(text);
  } catch (e) {
    throw Exception('O texto passado não é um numero');
  }

  return value;
}
