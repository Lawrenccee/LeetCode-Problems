package junitfaq;

import org.junit.*;
import static org.junit.Assert.*;

import data_structures.*;

public class StackTest {
  @Test
  public void testEmptyStack() {
    assertTrue(stack.empty());
  }

  @Test
  public void testPushStack() {
    assertEquals(5, stack.push(5)); // can pass that in because of autoboxing
    assertEquals(5, stack.peek());
  }

  @Test
  public void testPushMultipleStack() {
    stack.push(1);
    stack.push(2);
    stack.push(3);
    assertEquals(3, stack.peek());
  }

  @Test
  public void testPoppingFromStack() {
    stack.push(1);
    stack.push(2);
    stack.push(3);
    assertEquals(3, stack.pop());
    assertEquals(2, stack.pop());
    assertEquals(1, stack.pop());
    assertTrue(stack.empty());
  }

  @Before // this will run before each of the tests
  public void setUp() {
    stack = new Stack<>();
  }

  private Stack<Integer> stack;
}