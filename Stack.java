package data_structures;

public class Stack<Item> {
  private Item[] stack;
  private int size;
  private int top;
  private Class<Item> c;

  public Stack() {
    this.size = 10;
    this.stack = (Item[]) new Object[this.size];
    this.top = -1;
  }

  public Item peek() {
    if (this.top == -1) {
      return null;
    } else {
      return this.stack[this.top];
    }
  }

  public Item push(Item val) {
    if (this.top == size)
      this.resize();

    this.stack[++this.top] = val;
    return val;
  }

  public Item pop() {
    if (stack.length > 0) {
      Item temp = this.stack[this.top];
      this.stack[this.top--] = null;
      return temp;
    } else {
      return null;
    }
  }

  public boolean empty() {
    return (this.top == -1);
  }

  private void resize() {
    this.size = 2 * size;
    Item[] newStack = (Item[]) new Object[this.size];
    
    for (int i = 0; i < this.stack.length; i++) {
      newStack[i] = this.stack[i];
    }

    this.stack = newStack;
  }
}