extension StringTruncate on String {
  String truncateWords(int maxWords) {
    final words = split(' ');
    if (words.length <= maxWords) {
      return this;
    }
    return '${words.sublist(0, maxWords).join(' ')}...';
  }

  String truncateCharacters(int maxLength) {
    if (length <= maxLength) {
      return this;
    }
    return '${substring(0, maxLength)}...';
  }
}
