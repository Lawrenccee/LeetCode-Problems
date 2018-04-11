class count_and_say {
  public String countAndSay(int n) {
    if (n <= 0) {
      return null;
    }
    
    String result = "1";
    int i = 1;
    
    while (i < n) {
      StringBuilder builder = new StringBuilder();
      char number = result.charAt(0);
      int count = 1;

      for (int j = 1; j < result.length(); ++j) {
        if (result.charAt(j) == number) {
          count++;
        } else {
          builder.append(count);
          builder.append(number);
          count = 1;
          number = result.charAt(j);
        }
      }
      
      builder.append(count);
      builder.append(number);
      result = builder.toString();
      ++i;
    }
    
    return result;
  }
}