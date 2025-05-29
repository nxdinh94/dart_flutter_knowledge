1. Stream don't use `await` keyword to run.
2. Handle Stream events using `await for` or `listen()` from Stream API
    ```dart
        await for(final value in StreamFuction()){
            print(value);
        }

        StreamFunction().listen(value);
    ```
3. We receive event of stream when its value is yielded. That's mean **Each event of stream can be delayed to yield by example "Future.delay()"**. After the delay, the event of stream is yield and then we actually receive it.

4. Combine some streams by sung `StreamZip` from `async` package
5. 