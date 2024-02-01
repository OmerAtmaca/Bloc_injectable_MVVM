String nullOrEmpty(String? text, String emptyString) {
  if (text == null || text == "") {
    return emptyString;
  } else {
    return text;
  }
}

bool isNullOrEmpty(String? text) => text == null || text == "";
