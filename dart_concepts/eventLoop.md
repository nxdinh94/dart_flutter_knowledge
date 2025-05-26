# Event loop
Dart’s Event Queues

A Dart app has two queues to run the Event Loop

> Event Queue
The event queue contains all outside events: I/O, mouse events, drawing events, timers, messages between Dart isolates, and so on.

The event queue contains events both from Dart and from elsewhere in the system.

> Microtask Queue
The microtask queue is necessary because the event-handling code sometimes needs to complete a task later, before returning control to the event loop.

Is used to store some very short asynchronous internal actions. All of the actions in the Microtask Queue will be executed before the Event Queue turn

## Working on Event Loop Cycle
![image](assets\event_loop_demonstration.webp)

## Let’s know first that the main() function executes synchronously all existing calls, start to finish
![image](assets\priority.webp)
