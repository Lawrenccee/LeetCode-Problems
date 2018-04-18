package data_structures;

public class QueueStack<Item> {
  private Stack<Item> in;
  private Stack<Item> out;

  public QueueStack() {
    this.in = new Stack<Item>();
    this.out = new Stack<Item>();
  }

  public Item front() {
    if (this.in.empty() && this.out.empty()) {
      return null;
    } else {
      if (this.out.empty()) {
        while (!this.in.empty()) {
          this.out.push(this.in.pop());
        }
      }

      return this.out.peek();
    }
  }

  public Item push(Item val) {
    this.in.push(val);
    return val;
  }

  public Item pop() {
    if (this.in.empty() && this.out.empty()) {
      return null;
    } else {
      if (this.out.empty()) {
        while (!this.in.empty()) {
          this.out.push(this.in.pop());
        }
      }

      return this.out.pop();
    }
  }

  public boolean empty() {
    return (this.in.empty() && this.out.empty());
  }
}