import java.util.Stack;
import java.util.HashMap;

class valid_parentheses {
  public boolean isValid(String s) {
    HashMap<String, String> mapping = new HashMap<String, String>();
    mapping.put(")", "(");
    mapping.put("]", "[");
    mapping.put("}", "{");

    Stack<String> stack = new Stack<String>();

    for (int i = 0; i < s.length(); i++) {
      String curr = s.substring(i, i + 1);
      if (mapping.get(curr) != null) {
        if (stack.empty() || !mapping.get(curr).equals(stack.peek())) {
          return false;
        } else {
          stack.pop();
        }
      } else {
        stack.push(curr);
      }
    }

    return stack.empty();
  }

  public static void main(String[] args) {
    String s = "(){[]}";

    System.out.println(new valid_parentheses().isValid(s));
  }
}