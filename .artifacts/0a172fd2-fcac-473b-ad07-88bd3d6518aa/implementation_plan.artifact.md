# رفع مشکل عدم تغییر وضعیت چک‌باکس‌ها

دلیل اصلی کار نکردن چک‌باکس‌ها دو مورد است:
1. در کلاس `Product` متد `copyWith` مقدار `isSelected` را به نمونه جدید منتقل نمی‌کند.
2. در `ProductListScreen` از `ref.read` استفاده شده که باعث می‌شود با تغییر استیت، رابط کاربری بروزرسانی نشود.

## تغییرات پیشنهادی

### [Product Model]

#### [MODIFY] [product.dart](file:///F:/flutter/flutter_state_managment/lib/features/product/models/product.dart)
اصلاح متد `copyWith` برای شامل شدن فیلد `isSelected`.

### [Product Screen]

#### [MODIFY] [product_list_screen.dart](file:///F:/flutter/flutter_state_managment/lib/features/product/screens/product_list_screen.dart)
تغییر `ref.read` به `ref.watch` در متد `build` برای گوش دادن به تغییرات لیست محصولات.

## برنامه تایید

### تایید دستی
- اجرای اپلیکیشن و کلیک روی چک‌باکس‌ها یا ردیف محصولات.
- بررسی اینکه آیا وضعیت چک‌باکس تغییر می‌کند یا خیر.
