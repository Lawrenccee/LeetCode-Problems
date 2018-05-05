function Node(key, val) {
  this.prev;
  this.next;
  this.val = val;
  this.key = key;
}

function LinkedList() {
  this.head = new Node(null, null);
  this.tail = new Node(null, null);
  this.tail.prev = this.head;
  this.head.next = this.tail;
}

/**
 * @param {number} capacity
 */
var LRUCache = function (capacity) {
  this.capacity = capacity;
  this.size = 0;
  this.hash = {};
  this.list = new LinkedList();
};

/** 
 * @param {number} key
 * @return {number}
 */
LRUCache.prototype.get = function (key) {
  if (this.hash[key]) {
    let node = this.hash[key];
    let prev = node.prev;
    let next = node.next;
    prev.next = next;
    next.prev = prev;

    let tailPrev = this.list.tail.prev;
    this.list.tail.prev = node;
    node.next = this.list.tail;
    node.prev = tailPrev;
    tailPrev.next = node;

    return this.hash[key].val;
  }

  return -1;
};

/** 
 * @param {number} key 
 * @param {number} value
 * @return {void}
 */
LRUCache.prototype.put = function (key, value) {
  if (this.hash[key]) {
    let node = this.hash[key];
    let prev = node.prev;
    let next = node.next;
    prev.next = next;
    next.prev = prev;

    let tailPrev = this.list.tail.prev;
    this.list.tail.prev = node;
    node.next = this.list.tail;
    node.prev = tailPrev;
    tailPrev.next = node;

    this.hash[key].val = value;

    return;
  }

  let node = new Node(key, value);

  if (this.size === this.capacity) {
    let first = this.list.head.next;
    this.list.head.next = first.next;
    this.list.head.next.prev = this.list.head;

    let tailPrev = this.list.tail.prev;
    this.list.tail.prev = node;
    node.next = this.list.tail;
    node.prev = tailPrev;
    tailPrev.next = node;

    this.hash[key] = node;
    delete this.hash[first.key];
  } else {
    let tailPrev = this.list.tail.prev;
    this.list.tail.prev = node;
    node.next = this.list.tail;
    node.prev = tailPrev;
    tailPrev.next = node;

    this.hash[key] = node;
    this.size++;
  }

  return;
};

/** 
 * Your LRUCache object will be instantiated and called as such:
 * var obj = Object.create(LRUCache).createNew(capacity)
 * var param_1 = obj.get(key)
 * obj.put(key,value)
 */