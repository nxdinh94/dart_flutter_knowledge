

# Annotation
## @injectable
- Đánh dấu class là có thể được inject, nhưng:

- Mỗi lần bạn gọi `getIt<Class>()` sẽ tạo một instance mới (giống như `registerFactory`).

- **_Dùng khi bạn không cần reuse hoặc không quan tâm đến việc giữ một instance duy nhất._**
## @singleton
- Đánh dấu class là singleton:
- Chỉ tạo một instance duy nhất trong suốt vòng đời app.
- Mọi lần gọi `getIt<Class>()` đều trả về cùng một object.

- **_Dùng khi bạn muốn giữ một instance duy nhất như: Dio, SharedPreferences, Database, ConfigService, v.v._**
## @lazySingleton
- Chỉ tạo instance khi được dùng lần đầu tiên.
## @disposeMethod
- Tạo một dispose method, method này được gọi **trước** khi Instance của class được tạo gởi injectable bị `dispose`.
## @module  
- Dùng để đăng ký các class không thể dùng `@injectable`, ví dụ:
    - Class từ thư viện bên thứ ba (không sửa source được).
    - Class cần custom init logic (như `Dio`, `SharedPreferences`, v.v.).
- Cho phép bạn viết method trả về instance, giống như cách `provider` hoặc `Dagger` (trong Android) hoạt động.
- Example:
```dart
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@module
abstract class RegisterModule {
  @singleton
  Dio get dio => Dio(BaseOptions(baseUrl: 'https://api.example.com'));
}
```

## @preResolve
- Để xử lý các dependency cần khởi tạo bất đồng bộ (async) trước khi ứng dụng bắt đầu chạy, ví dụ như:
    - SharedPreferences.getInstance()
    - Database.init()


## 
## 