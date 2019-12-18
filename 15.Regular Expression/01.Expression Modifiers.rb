#điều chỉnh biểu thức
    # Regular expression literals may include an optional modifier to control various aspects of matching. The modifier is specified after the second slash character, 
         # as shown previously and may be represented by one of these characters
    
    # Các biểu thức chính quy có thể bao gồm một công cụ sửa đổi tùy chọn để kiểm soát các khía cạnh khác nhau của kết hợp. Công cụ sửa đổi được chỉ định sau ký tự gạch chéo thứ hai,
         # như được hiển thị trước đó và có thể được đại diện bởi một trong những nhân vật này

i : Ignores case when matching text.
o : Performs #{} interpolations only once, the first time the regexp literal is evaluated.
x : Ignores whitespace and allows comments in regular expressions.
m : Matches multiple lines, recognizing newlines as normal characters.
u,e,s,n : Interprets the regexp as Unicode (UTF-8), EUC, SJIS, or ASCII. If none of these modifiers is specified, the regular expression is assumed to use the source encoding.