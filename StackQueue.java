package data_structures;

public class StackQueue<Item> {
  private Queue<Item> in;
  private Queue<Item> out;

  public StackQueue() {
    this.in = new Queue<Item>();
    this.out = new Queue<Item>();
  }

  public Item peek() {
    if (this.in.empty() && this.out.empty()) {
      return null;
    } else {
      if (this.out.empty()) {
        return this.in.first();
      } else {
        return this.out.first();
      }
    }
  }

  public Item push(Item val) {
    while (!this.in.empty()) {
      this.out.enqueue(this.in.pop());
    }

    this.in.enqueue(val);
    Queue<Item> temp = this.in;
    this.in = this.out;
    this.out = temp;

    return val;
  }

  public Item pop() {
    if (this.in.empty() && this.out.empty()) {
      return null;
    } else {
      if (this.out.empty()) {
        return this.in.pop();
      } else {
        return this.out.pop();
      }
    }
  }

  public boolean empty() {
    return (this.in.empty() && this.out.empty());
  }
}