package data_structures;

public class Queue<Item> {
  private Item[] queue;
  private int size;
  private int front, next, total;

  public Queue() {
    this.size = 10;
    this.queue = (Item[]) new Object[this.size];
    this.front = this.next = this.total = 0;
  }

  public Item first() {
    if (this.total == 0) {
      return null;
    } else {
      return this.queue[this.front % this.size];
    }
  }

  public Item enqueue(Item val) {
    if (this.total == this.size)
      this.resize();

    this.queue[this.next++ % this.size] = val;
    this.total++;
    return val;
  }

  public Item pop() {
    if (this.total > 0) {
      this.total--;
      Item temp = this.queue[this.front % this.size];
      this.queue[this.front++ % this.size] = null;
      return temp;
    } else {
      return null;
    }
  }

  public boolean empty() {
    return (this.total == 0);
  }

  private void resize() {
    Item[] newQueue = (Item[]) new Object[2 * this.size];

    int curr = this.front;
    int i = 0;

    while (this.queue[curr % this.size] != null) {
      newQueue[i++] = this.queue[curr++];
    }

    this.next = curr;
    this.front = 0;
    this.size *= 2;

    this.queue = newQueue;
  }
}