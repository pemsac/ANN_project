#pragma line 1 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/Training.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/Training.cpp"
#pragma line 23 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/Training.cpp"
#pragma line 1 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/Training.h" 1
#pragma line 46 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/Training.h"
#pragma line 1 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/ANN.h" 1
#pragma line 34 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/ANN.h"
#pragma line 1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/cmath" 1 3
#pragma line 41 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/cmath" 3
#pragma empty_line
#pragma line 42 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/cmath" 3
#pragma empty_line
#pragma line 1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/mingw32/bits/c++config.h" 1 3
#pragma line 153 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/mingw32/bits/c++config.h" 3
namespace std
{
  typedef unsigned int size_t;
  typedef int ptrdiff_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 393 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/mingw32/bits/c++config.h" 3
#pragma line 1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/mingw32/bits/os_defines.h" 1 3
#pragma line 394 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/mingw32/bits/c++config.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/mingw32/bits/cpu_defines.h" 1 3
#pragma line 397 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/mingw32/bits/c++config.h" 2 3
#pragma line 44 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/cmath" 2 3
#pragma line 1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/bits/cpp_type_traits.h" 1 3
#pragma line 36 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/bits/cpp_type_traits.h" 3
#pragma empty_line
#pragma line 37 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/bits/cpp_type_traits.h" 3
#pragma line 69 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/bits/cpp_type_traits.h" 3
namespace __gnu_cxx
{
#pragma empty_line
#pragma empty_line
  template<typename _Iterator, typename _Container>
    class __normal_iterator;
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
namespace std
{
#pragma empty_line
#pragma empty_line
  struct __true_type { };
  struct __false_type { };
#pragma empty_line
  template<bool>
    struct __truth_type
    { typedef __false_type __type; };
#pragma empty_line
  template<>
    struct __truth_type<true>
    { typedef __true_type __type; };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<class _Sp, class _Tp>
    struct __traitor
    {
      enum { __value = bool(_Sp::__value) || bool(_Tp::__value) };
      typedef typename __truth_type<__value>::__type __type;
    };
#pragma empty_line
#pragma empty_line
  template<typename, typename>
    struct __are_same
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<typename _Tp>
    struct __are_same<_Tp, _Tp>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_void
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<>
    struct __is_void<void>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_integer
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_integer<bool>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<signed char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_integer<wchar_t>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma line 199 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/bits/cpp_type_traits.h" 3
  template<>
    struct __is_integer<short>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned short>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<int>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned int>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<long long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned long long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_floating
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_floating<float>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_floating<double>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_floating<long double>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_pointer
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<typename _Tp>
    struct __is_pointer<_Tp*>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_normal_iterator
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<typename _Iterator, typename _Container>
    struct __is_normal_iterator< __gnu_cxx::__normal_iterator<_Iterator,
             _Container> >
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_arithmetic
    : public __traitor<__is_integer<_Tp>, __is_floating<_Tp> >
    { };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_fundamental
    : public __traitor<__is_void<_Tp>, __is_arithmetic<_Tp> >
    { };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_scalar
    : public __traitor<__is_arithmetic<_Tp>, __is_pointer<_Tp> >
    { };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_char
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<>
    struct __is_char<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_char<wchar_t>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_byte
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<>
    struct __is_byte<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_byte<signed char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_byte<unsigned char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_move_iterator
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma line 422 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/bits/cpp_type_traits.h" 3
#pragma empty_line
}
#pragma line 45 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/cmath" 2 3
#pragma line 1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/ext/type_traits.h" 1 3
#pragma line 32 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/ext/type_traits.h" 3
#pragma empty_line
#pragma line 33 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/ext/type_traits.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace __gnu_cxx
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<bool, typename>
    struct __enable_if
    { };
#pragma empty_line
  template<typename _Tp>
    struct __enable_if<true, _Tp>
    { typedef _Tp __type; };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<bool _Cond, typename _Iftrue, typename _Iffalse>
    struct __conditional_type
    { typedef _Iftrue __type; };
#pragma empty_line
  template<typename _Iftrue, typename _Iffalse>
    struct __conditional_type<false, _Iftrue, _Iffalse>
    { typedef _Iffalse __type; };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __add_unsigned
    {
    private:
      typedef __enable_if<std::__is_integer<_Tp>::__value, _Tp> __if_type;
#pragma empty_line
    public:
      typedef typename __if_type::__type __type;
    };
#pragma empty_line
  template<>
    struct __add_unsigned<char>
    { typedef unsigned char __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<signed char>
    { typedef unsigned char __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<short>
    { typedef unsigned short __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<int>
    { typedef unsigned int __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<long>
    { typedef unsigned long __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<long long>
    { typedef unsigned long long __type; };
#pragma empty_line
#pragma empty_line
  template<>
    struct __add_unsigned<bool>;
#pragma empty_line
  template<>
    struct __add_unsigned<wchar_t>;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __remove_unsigned
    {
    private:
      typedef __enable_if<std::__is_integer<_Tp>::__value, _Tp> __if_type;
#pragma empty_line
    public:
      typedef typename __if_type::__type __type;
    };
#pragma empty_line
  template<>
    struct __remove_unsigned<char>
    { typedef signed char __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned char>
    { typedef signed char __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned short>
    { typedef short __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned int>
    { typedef int __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned long>
    { typedef long __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned long long>
    { typedef long long __type; };
#pragma empty_line
#pragma empty_line
  template<>
    struct __remove_unsigned<bool>;
#pragma empty_line
  template<>
    struct __remove_unsigned<wchar_t>;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type* __ptr)
    { return __ptr == 0; }
#pragma empty_line
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type)
    { return false; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp, bool = std::__is_integer<_Tp>::__value>
    struct __promote
    { typedef double __type; };
#pragma empty_line
  template<typename _Tp>
    struct __promote<_Tp, false>
    { typedef _Tp __type; };
#pragma empty_line
  template<typename _Tp, typename _Up>
    struct __promote_2
    {
    private:
      typedef typename __promote<_Tp>::__type __type1;
      typedef typename __promote<_Up>::__type __type2;
#pragma empty_line
    public:
      typedef __typeof__(__type1() + __type2()) __type;
    };
#pragma empty_line
  template<typename _Tp, typename _Up, typename _Vp>
    struct __promote_3
    {
    private:
      typedef typename __promote<_Tp>::__type __type1;
      typedef typename __promote<_Up>::__type __type2;
      typedef typename __promote<_Vp>::__type __type3;
#pragma empty_line
    public:
      typedef __typeof__(__type1() + __type2() + __type3()) __type;
    };
#pragma empty_line
  template<typename _Tp, typename _Up, typename _Vp, typename _Wp>
    struct __promote_4
    {
    private:
      typedef typename __promote<_Tp>::__type __type1;
      typedef typename __promote<_Up>::__type __type2;
      typedef typename __promote<_Vp>::__type __type3;
      typedef typename __promote<_Wp>::__type __type4;
#pragma empty_line
    public:
      typedef __typeof__(__type1() + __type2() + __type3() + __type4()) __type;
    };
#pragma empty_line
#pragma empty_line
}
#pragma line 46 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/cmath" 2 3
#pragma line 1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 1 3
#pragma line 16 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
#pragma empty_line
#pragma line 17 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 1 3
#pragma line 32 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 3
#pragma empty_line
#pragma line 33 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 3
#pragma line 21 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 2 3
#pragma line 90 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern "C" {
#pragma line 134 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
struct _exception
{
 int type;
 char *name;
 double arg1;
 double arg2;
 double retval;
};
#pragma empty_line
 double __attribute__((__cdecl__)) sin (double);
 double __attribute__((__cdecl__)) cos (double);
 double __attribute__((__cdecl__)) tan (double);
 double __attribute__((__cdecl__)) sinh (double);
 double __attribute__((__cdecl__)) cosh (double);
 double __attribute__((__cdecl__)) tanh (double);
 double __attribute__((__cdecl__)) asin (double);
 double __attribute__((__cdecl__)) acos (double);
 double __attribute__((__cdecl__)) atan (double);
 double __attribute__((__cdecl__)) atan2 (double, double);
 double __attribute__((__cdecl__)) exp (double);
 double __attribute__((__cdecl__)) log (double);
 double __attribute__((__cdecl__)) log10 (double);
 double __attribute__((__cdecl__)) pow (double, double);
 double __attribute__((__cdecl__)) sqrt (double);
 double __attribute__((__cdecl__)) ceil (double);
 double __attribute__((__cdecl__)) floor (double);
 double __attribute__((__cdecl__)) fabs (double);
 double __attribute__((__cdecl__)) ldexp (double, int);
 double __attribute__((__cdecl__)) frexp (double, int*);
 double __attribute__((__cdecl__)) modf (double, double*);
 double __attribute__((__cdecl__)) fmod (double, double);
#pragma line 210 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
struct _complex
{
 double x;
 double y;
};
#pragma empty_line
 double __attribute__((__cdecl__)) _cabs (struct _complex);
#pragma empty_line
 double __attribute__((__cdecl__)) _hypot (double, double);
 double __attribute__((__cdecl__)) _j0 (double);
 double __attribute__((__cdecl__)) _j1 (double);
 double __attribute__((__cdecl__)) _jn (int, double);
 double __attribute__((__cdecl__)) _y0 (double);
 double __attribute__((__cdecl__)) _y1 (double);
 double __attribute__((__cdecl__)) _yn (int, double);
 int __attribute__((__cdecl__)) _matherr (struct _exception *);
#pragma line 234 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
 double __attribute__((__cdecl__)) _chgsign (double);
 double __attribute__((__cdecl__)) _copysign (double, double);
 double __attribute__((__cdecl__)) _logb (double);
 double __attribute__((__cdecl__)) _nextafter (double, double);
 double __attribute__((__cdecl__)) _scalb (double, long);
#pragma empty_line
 int __attribute__((__cdecl__)) _finite (double);
 int __attribute__((__cdecl__)) _fpclass (double);
 int __attribute__((__cdecl__)) _isnan (double);
#pragma line 254 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
 double __attribute__((__cdecl__)) j0 (double);
 double __attribute__((__cdecl__)) j1 (double);
 double __attribute__((__cdecl__)) jn (int, double);
 double __attribute__((__cdecl__)) y0 (double);
 double __attribute__((__cdecl__)) y1 (double);
 double __attribute__((__cdecl__)) yn (int, double);
#pragma empty_line
 double __attribute__((__cdecl__)) chgsign (double);
#pragma line 270 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
 int __attribute__((__cdecl__)) finite (double);
 int __attribute__((__cdecl__)) fpclass (double);
#pragma line 324 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
typedef long double float_t;
typedef long double double_t;
#pragma line 354 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern int __attribute__((__cdecl__)) __fpclassifyf (float);
extern int __attribute__((__cdecl__)) __fpclassify (double);
extern int __attribute__((__cdecl__)) __fpclassifyl (long double);
#pragma line 379 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern int __attribute__((__cdecl__)) __isnan (double);
extern int __attribute__((__cdecl__)) __isnanf (float);
extern int __attribute__((__cdecl__)) __isnanl (long double);
#pragma line 419 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern int __attribute__((__cdecl__)) __signbit (double);
extern int __attribute__((__cdecl__)) __signbitf (float);
extern int __attribute__((__cdecl__)) __signbitl (long double);
#pragma line 447 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern float __attribute__((__cdecl__)) sinf (float);
extern long double __attribute__((__cdecl__)) sinl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) cosf (float);
extern long double __attribute__((__cdecl__)) cosl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) tanf (float);
extern long double __attribute__((__cdecl__)) tanl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) asinf (float);
extern long double __attribute__((__cdecl__)) asinl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) acosf (float);
extern long double __attribute__((__cdecl__)) acosl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) atanf (float);
extern long double __attribute__((__cdecl__)) atanl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) atan2f (float, float);
extern long double __attribute__((__cdecl__)) atan2l (long double, long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) sinhf (float);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) sinhl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) coshf (float);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) coshl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) tanhf (float);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) tanhl (long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) acosh (double);
extern float __attribute__((__cdecl__)) acoshf (float);
extern long double __attribute__((__cdecl__)) acoshl (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) asinh (double);
extern float __attribute__((__cdecl__)) asinhf (float);
extern long double __attribute__((__cdecl__)) asinhl (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) atanh (double);
extern float __attribute__((__cdecl__)) atanhf (float);
extern long double __attribute__((__cdecl__)) atanhl (long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) expf (float);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) expl (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) exp2(double);
extern float __attribute__((__cdecl__)) exp2f(float);
extern long double __attribute__((__cdecl__)) exp2l(long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) expm1(double);
extern float __attribute__((__cdecl__)) expm1f(float);
extern long double __attribute__((__cdecl__)) expm1l(long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) frexpf (float, int*);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) frexpl (long double, int*);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int __attribute__((__cdecl__)) ilogb (double);
extern int __attribute__((__cdecl__)) ilogbf (float);
extern int __attribute__((__cdecl__)) ilogbl (long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) ldexpf (float, int);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) ldexpl (long double, int);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) logf (float);
extern long double __attribute__((__cdecl__)) logl (long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) log10f (float);
extern long double __attribute__((__cdecl__)) log10l (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) log1p(double);
extern float __attribute__((__cdecl__)) log1pf(float);
extern long double __attribute__((__cdecl__)) log1pl(long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) log2 (double);
extern float __attribute__((__cdecl__)) log2f (float);
extern long double __attribute__((__cdecl__)) log2l (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) logb (double);
extern float __attribute__((__cdecl__)) logbf (float);
extern long double __attribute__((__cdecl__)) logbl (long double);
#pragma line 603 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern float __attribute__((__cdecl__)) modff (float, float*);
extern long double __attribute__((__cdecl__)) modfl (long double, long double*);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) scalbn (double, int);
extern float __attribute__((__cdecl__)) scalbnf (float, int);
extern long double __attribute__((__cdecl__)) scalbnl (long double, int);
#pragma empty_line
extern double __attribute__((__cdecl__)) scalbln (double, long);
extern float __attribute__((__cdecl__)) scalblnf (float, long);
extern long double __attribute__((__cdecl__)) scalblnl (long double, long);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) cbrt (double);
extern float __attribute__((__cdecl__)) cbrtf (float);
extern long double __attribute__((__cdecl__)) cbrtl (long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) fabsf (float x);
extern long double __attribute__((__cdecl__)) fabsl (long double x);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) hypot (double, double);
extern float __attribute__((__cdecl__)) hypotf (float, float);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) hypotl (long double, long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) powf (float, float);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) powl (long double, long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) sqrtf (float);
extern long double __attribute__((__cdecl__)) sqrtl (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) erf (double);
extern float __attribute__((__cdecl__)) erff (float);
extern long double __attribute__((__cdecl__)) erfl (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) erfc (double);
extern float __attribute__((__cdecl__)) erfcf (float);
extern long double __attribute__((__cdecl__)) erfcl (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) lgamma (double);
extern float __attribute__((__cdecl__)) lgammaf (float);
extern long double __attribute__((__cdecl__)) lgammal (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) tgamma (double);
extern float __attribute__((__cdecl__)) tgammaf (float);
extern long double __attribute__((__cdecl__)) tgammal (long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) ceilf (float);
extern long double __attribute__((__cdecl__)) ceill (long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) floorf (float);
extern long double __attribute__((__cdecl__)) floorl (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) nearbyint ( double);
extern float __attribute__((__cdecl__)) nearbyintf (float);
extern long double __attribute__((__cdecl__)) nearbyintl (long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) rint (double);
extern float __attribute__((__cdecl__)) rintf (float);
extern long double __attribute__((__cdecl__)) rintl (long double);
#pragma empty_line
#pragma empty_line
extern long __attribute__((__cdecl__)) lrint (double);
extern long __attribute__((__cdecl__)) lrintf (float);
extern long __attribute__((__cdecl__)) lrintl (long double);
#pragma empty_line
extern long long __attribute__((__cdecl__)) llrint (double);
extern long long __attribute__((__cdecl__)) llrintf (float);
extern long long __attribute__((__cdecl__)) llrintl (long double);
#pragma line 771 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern double __attribute__((__cdecl__)) round (double);
extern float __attribute__((__cdecl__)) roundf (float);
extern long double __attribute__((__cdecl__)) roundl (long double);
#pragma empty_line
#pragma empty_line
extern long __attribute__((__cdecl__)) lround (double);
extern long __attribute__((__cdecl__)) lroundf (float);
extern long __attribute__((__cdecl__)) lroundl (long double);
#pragma empty_line
extern long long __attribute__((__cdecl__)) llround (double);
extern long long __attribute__((__cdecl__)) llroundf (float);
extern long long __attribute__((__cdecl__)) llroundl (long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) trunc (double);
extern float __attribute__((__cdecl__)) truncf (float);
extern long double __attribute__((__cdecl__)) truncl (long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) fmodf (float, float);
extern long double __attribute__((__cdecl__)) fmodl (long double, long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) remainder (double, double);
extern float __attribute__((__cdecl__)) remainderf (float, float);
extern long double __attribute__((__cdecl__)) remainderl (long double, long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) remquo(double, double, int *);
extern float __attribute__((__cdecl__)) remquof(float, float, int *);
extern long double __attribute__((__cdecl__)) remquol(long double, long double, int *);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) copysign (double, double);
extern float __attribute__((__cdecl__)) copysignf (float, float);
extern long double __attribute__((__cdecl__)) copysignl (long double, long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) nan(const char *tagp);
extern float __attribute__((__cdecl__)) nanf(const char *tagp);
extern long double __attribute__((__cdecl__)) nanl(const char *tagp);
#pragma line 821 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern double __attribute__((__cdecl__)) nextafter (double, double);
extern float __attribute__((__cdecl__)) nextafterf (float, float);
extern long double __attribute__((__cdecl__)) nextafterl (long double, long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) nexttoward (double, long double);
extern float __attribute__((__cdecl__)) nexttowardf (float, long double);
extern long double __attribute__((__cdecl__)) nexttowardl (long double, long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) fdim (double x, double y);
extern float __attribute__((__cdecl__)) fdimf (float x, float y);
extern long double __attribute__((__cdecl__)) fdiml (long double x, long double y);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) fmax (double, double);
extern float __attribute__((__cdecl__)) fmaxf (float, float);
extern long double __attribute__((__cdecl__)) fmaxl (long double, long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) fmin (double, double);
extern float __attribute__((__cdecl__)) fminf (float, float);
extern long double __attribute__((__cdecl__)) fminl (long double, long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) fma (double, double, double);
extern float __attribute__((__cdecl__)) fmaf (float, float, float);
extern long double __attribute__((__cdecl__)) fmal (long double, long double, long double);
#pragma line 910 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
}
#pragma line 47 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/cmath" 2 3
#pragma line 77 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/cmath" 3
namespace std
{
#pragma empty_line
#pragma empty_line
  inline double
  abs(double __x)
  { return __builtin_fabs(__x); }
#pragma empty_line
  inline float
  abs(float __x)
  { return __builtin_fabsf(__x); }
#pragma empty_line
  inline long double
  abs(long double __x)
  { return __builtin_fabsl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    abs(_Tp __x)
    { return __builtin_fabs(__x); }
#pragma empty_line
  using ::acos;
#pragma empty_line
  inline float
  acos(float __x)
  { return __builtin_acosf(__x); }
#pragma empty_line
  inline long double
  acos(long double __x)
  { return __builtin_acosl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    acos(_Tp __x)
    { return __builtin_acos(__x); }
#pragma empty_line
  using ::asin;
#pragma empty_line
  inline float
  asin(float __x)
  { return __builtin_asinf(__x); }
#pragma empty_line
  inline long double
  asin(long double __x)
  { return __builtin_asinl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    asin(_Tp __x)
    { return __builtin_asin(__x); }
#pragma empty_line
  using ::atan;
#pragma empty_line
  inline float
  atan(float __x)
  { return __builtin_atanf(__x); }
#pragma empty_line
  inline long double
  atan(long double __x)
  { return __builtin_atanl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    atan(_Tp __x)
    { return __builtin_atan(__x); }
#pragma empty_line
  using ::atan2;
#pragma empty_line
  inline float
  atan2(float __y, float __x)
  { return __builtin_atan2f(__y, __x); }
#pragma empty_line
  inline long double
  atan2(long double __y, long double __x)
  { return __builtin_atan2l(__y, __x); }
#pragma empty_line
  template<typename _Tp, typename _Up>
    inline
    typename __gnu_cxx::__promote_2<
    typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value
        && __is_arithmetic<_Up>::__value,
        _Tp>::__type, _Up>::__type
    atan2(_Tp __y, _Up __x)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return atan2(__type(__y), __type(__x));
    }
#pragma empty_line
  using ::ceil;
#pragma empty_line
  inline float
  ceil(float __x)
  { return __builtin_ceilf(__x); }
#pragma empty_line
  inline long double
  ceil(long double __x)
  { return __builtin_ceill(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    ceil(_Tp __x)
    { return __builtin_ceil(__x); }
#pragma empty_line
  using ::cos;
#pragma empty_line
  inline float
  cos(float __x)
  { return __builtin_cosf(__x); }
#pragma empty_line
  inline long double
  cos(long double __x)
  { return __builtin_cosl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    cos(_Tp __x)
    { return __builtin_cos(__x); }
#pragma empty_line
  using ::cosh;
#pragma empty_line
  inline float
  cosh(float __x)
  { return __builtin_coshf(__x); }
#pragma empty_line
  inline long double
  cosh(long double __x)
  { return __builtin_coshl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    cosh(_Tp __x)
    { return __builtin_cosh(__x); }
#pragma empty_line
  using ::exp;
#pragma empty_line
  inline float
  exp(float __x)
  { return __builtin_expf(__x); }
#pragma empty_line
  inline long double
  exp(long double __x)
  { return __builtin_expl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    exp(_Tp __x)
    { return __builtin_exp(__x); }
#pragma empty_line
  using ::fabs;
#pragma empty_line
  inline float
  fabs(float __x)
  { return __builtin_fabsf(__x); }
#pragma empty_line
  inline long double
  fabs(long double __x)
  { return __builtin_fabsl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    fabs(_Tp __x)
    { return __builtin_fabs(__x); }
#pragma empty_line
  using ::floor;
#pragma empty_line
  inline float
  floor(float __x)
  { return __builtin_floorf(__x); }
#pragma empty_line
  inline long double
  floor(long double __x)
  { return __builtin_floorl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    floor(_Tp __x)
    { return __builtin_floor(__x); }
#pragma empty_line
  using ::fmod;
#pragma empty_line
  inline float
  fmod(float __x, float __y)
  { return __builtin_fmodf(__x, __y); }
#pragma empty_line
  inline long double
  fmod(long double __x, long double __y)
  { return __builtin_fmodl(__x, __y); }
#pragma empty_line
  using ::frexp;
#pragma empty_line
  inline float
  frexp(float __x, int* __exp)
  { return __builtin_frexpf(__x, __exp); }
#pragma empty_line
  inline long double
  frexp(long double __x, int* __exp)
  { return __builtin_frexpl(__x, __exp); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    frexp(_Tp __x, int* __exp)
    { return __builtin_frexp(__x, __exp); }
#pragma empty_line
  using ::ldexp;
#pragma empty_line
  inline float
  ldexp(float __x, int __exp)
  { return __builtin_ldexpf(__x, __exp); }
#pragma empty_line
  inline long double
  ldexp(long double __x, int __exp)
  { return __builtin_ldexpl(__x, __exp); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
  ldexp(_Tp __x, int __exp)
  { return __builtin_ldexp(__x, __exp); }
#pragma empty_line
  using ::log;
#pragma empty_line
  inline float
  log(float __x)
  { return __builtin_logf(__x); }
#pragma empty_line
  inline long double
  log(long double __x)
  { return __builtin_logl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    log(_Tp __x)
    { return __builtin_log(__x); }
#pragma empty_line
  using ::log10;
#pragma empty_line
  inline float
  log10(float __x)
  { return __builtin_log10f(__x); }
#pragma empty_line
  inline long double
  log10(long double __x)
  { return __builtin_log10l(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    log10(_Tp __x)
    { return __builtin_log10(__x); }
#pragma empty_line
  using ::modf;
#pragma empty_line
  inline float
  modf(float __x, float* __iptr)
  { return __builtin_modff(__x, __iptr); }
#pragma empty_line
  inline long double
  modf(long double __x, long double* __iptr)
  { return __builtin_modfl(__x, __iptr); }
#pragma empty_line
  using ::pow;
#pragma empty_line
  inline float
  pow(float __x, float __y)
  { return __builtin_powf(__x, __y); }
#pragma empty_line
  inline long double
  pow(long double __x, long double __y)
  { return __builtin_powl(__x, __y); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  inline double
  pow(double __x, int __i)
  { return __builtin_powi(__x, __i); }
#pragma empty_line
  inline float
  pow(float __x, int __n)
  { return __builtin_powif(__x, __n); }
#pragma empty_line
  inline long double
  pow(long double __x, int __n)
  { return __builtin_powil(__x, __n); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    inline
    typename __gnu_cxx::__promote_2<
    typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value
        && __is_arithmetic<_Up>::__value,
        _Tp>::__type, _Up>::__type
    pow(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return pow(__type(__x), __type(__y));
    }
#pragma empty_line
  using ::sin;
#pragma empty_line
  inline float
  sin(float __x)
  { return __builtin_sinf(__x); }
#pragma empty_line
  inline long double
  sin(long double __x)
  { return __builtin_sinl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    sin(_Tp __x)
    { return __builtin_sin(__x); }
#pragma empty_line
  using ::sinh;
#pragma empty_line
  inline float
  sinh(float __x)
  { return __builtin_sinhf(__x); }
#pragma empty_line
  inline long double
  sinh(long double __x)
  { return __builtin_sinhl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    sinh(_Tp __x)
    { return __builtin_sinh(__x); }
#pragma empty_line
  using ::sqrt;
#pragma empty_line
  inline float
  sqrt(float __x)
  { return __builtin_sqrtf(__x); }
#pragma empty_line
  inline long double
  sqrt(long double __x)
  { return __builtin_sqrtl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    sqrt(_Tp __x)
    { return __builtin_sqrt(__x); }
#pragma empty_line
  using ::tan;
#pragma empty_line
  inline float
  tan(float __x)
  { return __builtin_tanf(__x); }
#pragma empty_line
  inline long double
  tan(long double __x)
  { return __builtin_tanl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    tan(_Tp __x)
    { return __builtin_tan(__x); }
#pragma empty_line
  using ::tanh;
#pragma empty_line
  inline float
  tanh(float __x)
  { return __builtin_tanhf(__x); }
#pragma empty_line
  inline long double
  tanh(long double __x)
  { return __builtin_tanhl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    tanh(_Tp __x)
    { return __builtin_tanh(__x); }
#pragma empty_line
#pragma empty_line
}
#pragma line 487 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/cmath" 3
namespace std
{
#pragma empty_line
#pragma line 737 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/c++/cmath" 3
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    fpclassify(_Tp __f)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_fpclassify(0x0100, (0x0100 | 0x0400), 0x0400,
      (0x0400 | 0x4000), 0x4000, __type(__f));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isfinite(_Tp __f)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isfinite(__type(__f));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isinf(_Tp __f)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isinf(__type(__f));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isnan(_Tp __f)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isnan(__type(__f));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isnormal(_Tp __f)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isnormal(__type(__f));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    signbit(_Tp __f)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_signbit(__type(__f));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isgreater(_Tp __f1, _Tp __f2)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isgreater(__type(__f1), __type(__f2));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isgreaterequal(_Tp __f1, _Tp __f2)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isgreaterequal(__type(__f1), __type(__f2));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isless(_Tp __f1, _Tp __f2)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isless(__type(__f1), __type(__f2));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    islessequal(_Tp __f1, _Tp __f2)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_islessequal(__type(__f1), __type(__f2));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    islessgreater(_Tp __f1, _Tp __f2)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_islessgreater(__type(__f1), __type(__f2));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isunordered(_Tp __f1, _Tp __f2)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isunordered(__type(__f1), __type(__f2));
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 35 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/ANN.h" 2
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void ANN(const int config[4 +2],
 const double WandB[4][35][35 +1],
 double uOut[4][35],
 const double netIn[35],
 int netOut[35]);
#pragma line 47 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/Training.h" 2
#pragma line 1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 1 3
#pragma line 21 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
#pragma line 1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 1 3 4
#pragma line 212 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 3 4
typedef unsigned int size_t;
#pragma line 22 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 2 3
#pragma line 60 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
extern "C" {
#pragma line 71 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
extern int _argc;
extern char** _argv;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___argc(void);
extern char*** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___argv(void);
extern wchar_t*** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___wargv(void);
#pragma line 112 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
   extern __attribute__ ((__dllimport__)) int __mb_cur_max;
#pragma line 137 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
 int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _errno(void);
#pragma empty_line
#pragma empty_line
 int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __doserrno(void);
#pragma line 149 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
  extern char *** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__environ(void);
  extern wchar_t *** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__wenviron(void);
#pragma line 172 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
  extern __attribute__ ((__dllimport__)) int _sys_nerr;
#pragma line 196 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
extern __attribute__ ((__dllimport__)) char* _sys_errlist[];
#pragma line 209 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__osver(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winver(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winmajor(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winminor(void);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __attribute__ ((__dllimport__)) unsigned int _osver;
extern __attribute__ ((__dllimport__)) unsigned int _winver;
extern __attribute__ ((__dllimport__)) unsigned int _winmajor;
extern __attribute__ ((__dllimport__)) unsigned int _winminor;
#pragma line 260 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
 char** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__pgmptr(void);
#pragma empty_line
 wchar_t** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__wpgmptr(void);
#pragma line 293 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
extern __attribute__ ((__dllimport__)) int _fmode;
#pragma line 303 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atof (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atoi (const char*);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atol (const char*);
#pragma empty_line
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtof (const wchar_t *);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtoi (const wchar_t *);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtol (const wchar_t *);
#pragma empty_line
#pragma empty_line
double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __strtod (const char*, char**);
extern double __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
strtod (const char* __restrict__ __nptr, char** __restrict__ __endptr);
float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtof (const char * __restrict__, char ** __restrict__);
long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtold (const char * __restrict__, char ** __restrict__);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtol (const char*, char**, int);
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoul (const char*, char**, int);
#pragma empty_line
#pragma empty_line
#pragma empty_line
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstol (const wchar_t*, wchar_t**, int);
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstoul (const wchar_t*, wchar_t**, int);
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstod (const wchar_t*, wchar_t**);
#pragma empty_line
float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstof( const wchar_t * __restrict__, wchar_t ** __restrict__);
long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstold (const wchar_t * __restrict__, wchar_t ** __restrict__);
#pragma empty_line
#pragma empty_line
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wgetenv(const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wputenv(const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsearchenv(const wchar_t*, const wchar_t*, wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsystem(const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wmakepath(wchar_t*, const wchar_t*, const wchar_t*, const wchar_t*, const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsplitpath (const wchar_t*, wchar_t*, wchar_t*, wchar_t*, wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfullpath (wchar_t*, const wchar_t*, size_t);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstombs (char*, const wchar_t*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wctomb (char*, wchar_t);
#pragma empty_line
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mblen (const char*, size_t);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mbstowcs (wchar_t*, const char*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mbtowc (wchar_t*, const char*, size_t);
#pragma empty_line
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rand (void);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) srand (unsigned int);
#pragma empty_line
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) calloc (size_t, size_t) __attribute__ ((__malloc__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) malloc (size_t) __attribute__ ((__malloc__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) realloc (void*, size_t);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) free (void*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) abort (void) __attribute__ ((__noreturn__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) exit (int) __attribute__ ((__noreturn__));
#pragma empty_line
#pragma empty_line
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atexit (void (*)(void));
#pragma empty_line
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) system (const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getenv (const char*);
#pragma empty_line
#pragma empty_line
 void* __attribute__((__cdecl__)) bsearch (const void*, const void*, size_t, size_t,
          int (*)(const void*, const void*));
 void __attribute__((__cdecl__)) qsort(void*, size_t, size_t,
      int (*)(const void*, const void*));
#pragma empty_line
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) abs (int) __attribute__ ((__const__));
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) labs (long) __attribute__ ((__const__));
#pragma line 385 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
#pragma empty_line
 div_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) div (int, int) __attribute__ ((__const__));
 ldiv_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ldiv (long, long) __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _beep (unsigned int, unsigned int) __attribute__ ((__deprecated__));
#pragma empty_line
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _seterrormode (int) __attribute__ ((__deprecated__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _sleep (unsigned long) __attribute__ ((__deprecated__));
#pragma empty_line
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _exit (int) __attribute__ ((__noreturn__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef int (* _onexit_t)(void);
_onexit_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _onexit( _onexit_t );
#pragma empty_line
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putenv (const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _searchenv (const char*, const char*, char*);
#pragma empty_line
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ecvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fcvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _gcvt (double, int, char*);
#pragma empty_line
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _makepath (char*, const char*, const char*, const char*, const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _splitpath (const char*, char*, char*, char*, char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fullpath (char*, const char*, size_t);
#pragma empty_line
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _itoa (int, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ltoa (long, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ultoa(unsigned long, char*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _itow (int, wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ltow (long, wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ultow (unsigned long, wchar_t*, int);
#pragma empty_line
#pragma empty_line
 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _atoi64(const char *);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _i64toa(long long, char *, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ui64toa(unsigned long long, char *, int);
 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtoi64(const wchar_t *);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _i64tow(long long, wchar_t *, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ui64tow(unsigned long long, wchar_t *, int);
#pragma empty_line
 unsigned int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_rotl)(unsigned int, int) __attribute__ ((__const__));
 unsigned int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_rotr)(unsigned int, int) __attribute__ ((__const__));
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_lrotl)(unsigned long, int) __attribute__ ((__const__));
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_lrotr)(unsigned long, int) __attribute__ ((__const__));
#pragma empty_line
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _set_error_mode (int);
#pragma line 477 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putenv (const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) searchenv (const char*, const char*, char*);
#pragma empty_line
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) itoa (int, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ltoa (long, char*, int);
#pragma empty_line
#pragma empty_line
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ecvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fcvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gcvt (double, int, char*);
#pragma line 497 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _Exit(int) __attribute__ ((__noreturn__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef struct { long long quot, rem; } lldiv_t;
#pragma empty_line
lldiv_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lldiv (long long, long long) __attribute__ ((__const__));
#pragma empty_line
long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) llabs(long long);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoll (const char* __restrict__, char** __restrict, int);
unsigned long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoull (const char* __restrict__, char** __restrict__, int);
#pragma empty_line
#pragma empty_line
long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atoll (const char *);
#pragma empty_line
#pragma empty_line
long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wtoll (const wchar_t *);
char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lltoa (long long, char *, int);
char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ulltoa (unsigned long long , char *, int);
wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lltow (long long, wchar_t *, int);
wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ulltow (unsigned long long, wchar_t *, int);
#pragma line 549 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdlib.h" 3
}
#pragma line 48 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/Training.h" 2
#pragma line 1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/time.h" 1 3
#pragma line 21 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/time.h" 3
#pragma line 1 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 1 3 4
#pragma line 22 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/time.h" 2 3
#pragma line 40 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/time.h" 3
typedef long __time32_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef long long __time64_t;
#pragma line 61 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/time.h" 3
typedef __time32_t time_t;
#pragma line 71 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/time.h" 3
typedef long clock_t;
#pragma line 80 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/time.h" 3
struct tm
{
 int tm_sec;
 int tm_min;
 int tm_hour;
 int tm_mday;
 int tm_mon;
 int tm_year;
 int tm_wday;
 int tm_yday;
 int tm_isdst;
#pragma empty_line
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C" {
#pragma empty_line
#pragma empty_line
 clock_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) clock (void);
#pragma empty_line
 time_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) time (time_t*);
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) difftime (time_t, time_t);
 time_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mktime (struct tm*);
#pragma line 117 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/time.h" 3
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) asctime (const struct tm*);
#pragma empty_line
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ctime (const time_t*);
 struct tm* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gmtime (const time_t*);
 struct tm* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) localtime (const time_t*);
#pragma empty_line
#pragma empty_line
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strftime (char*, size_t, const char*, const struct tm*);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _tzset (void);
#pragma empty_line
#pragma empty_line
extern void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tzset (void);
#pragma empty_line
#pragma empty_line
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strdate(char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strtime(char*);
#pragma line 186 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/time.h" 3
extern int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__daylight (void);
extern long* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__timezone (void);
extern char** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__tzname (void);
#pragma empty_line
extern __attribute__ ((__dllimport__)) int _daylight;
extern __attribute__ ((__dllimport__)) long _timezone;
extern __attribute__ ((__dllimport__)) char *_tzname[2];
#pragma line 226 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/time.h" 3
extern __attribute__ ((__dllimport__)) int daylight;
extern __attribute__ ((__dllimport__)) long timezone;
extern __attribute__ ((__dllimport__)) char *tzname[2];
#pragma line 250 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/time.h" 3
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wasctime(const struct tm*);
#pragma empty_line
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wctime(const time_t*);
#pragma empty_line
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wstrdate(wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wstrtime(wchar_t*);
#pragma line 269 "c:\\xilinx\\vivado_hls\\2015.4\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/time.h" 3
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsftime (wchar_t*, size_t, const wchar_t*, const struct tm*);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 49 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/Training.h" 2
#pragma empty_line
using namespace std;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
class Training
{
private:
#pragma line 66 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/Training.h"
  double _learnRate, _momentum, ***_delta, **_grad,
  _WandB[4][35][35 +1],
  _uOut[4][35];
#pragma empty_line
  int _numLayer, *_layerSize;
#pragma empty_line
#pragma empty_line
public:
#pragma line 83 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/Training.h"
  Training(int numLayer, int *layerSize);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  virtual ~Training();
#pragma line 102 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/Training.h"
  void backpropagation(double *in,double *target);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  double CEE(double *target);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  void updateLRandM(double currMCEE, double lastMCEE);
#pragma empty_line
  void uOutUpdate(double *in);
};
#pragma line 24 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/Training.cpp" 2
#pragma empty_line
#pragma empty_line
#pragma empty_line
Training::Training(int numLayer, int *layerSize)
{
  int i, j, k, config[4 +2];
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  _numLayer=numLayer;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  _layerSize=new int[numLayer];
#pragma empty_line
  for(i=0; i<numLayer; ++i)
    {
      _layerSize[i]=layerSize[i];
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  srand (time(__null));
  for(i=1; i<numLayer; ++i)
    {
      for(j=0; j<layerSize[i]; ++j)
 {
   for(k=0; k<layerSize[i-1]+1; ++k)
     {
       _WandB[i][j][k]=(double)(rand())/(0x7FFF) - 0.5;
     }
 }
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  config[0]=1;
  config[1]=numLayer;
  for(i=0; i<numLayer; ++i)
    {
      config[i+2]=_layerSize[i];
    }
  ANN(config, _WandB, __null, __null, __null);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  _grad=new double*[numLayer];
  for(i=1; i<numLayer; ++i)
    {
      _grad[i]=new double[layerSize[i]];
    }
#pragma line 91 "E:/TFM/ANN_project/ANN_project.hls/ANN_complete/Training.cpp"
  _delta = new double**[numLayer]();
  for(i=1; i<numLayer; ++i)
    {
      _delta[i]=new double*[layerSize[i]]();
    }
  for(i=1; i<numLayer; ++i)
    {
      for(j=0; j<layerSize[i]; ++j)
 {
   _delta[i][j]=new double[layerSize[i-1]+1]();
 }
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  _learnRate=0.1;
  _momentum=0.15;
#pragma empty_line
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
Training::~Training ()
{
  int i, j;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  for(i=1; i<_numLayer; ++i)
    {
      for(j=0; j<_layerSize[i]; ++j)
 {
   delete[] _delta[i][j];
 }
    }
  for(i=1; i<_numLayer; ++i)
    {
      delete[] _delta[i];
    }
  delete[] _delta;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  for(i=1; i<_numLayer; ++i)
    {
      delete[] _grad[i];
    }
  delete[] _grad;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  delete[] _layerSize;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
void Training::backpropagation(double *in, double *target)
{
  double sum;
  int i, j, k, config[4 +2];
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  config[0]=2;
  ANN(config, __null, _uOut, in, __null);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  for(i=0;i<_layerSize[_numLayer-1];++i)
    {
      _grad[_numLayer-1][i]=(target[i]-_uOut[_numLayer-1][i]);
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  for(i=_numLayer-2;i>0;--i)
    {
      for( j=0;j<_layerSize[i];++j)
 {
#pragma empty_line
   for(k=0, sum=0.0; k<_layerSize[i+1];++k)
     {
       sum+=_grad[i+1][k]*_WandB[i+1][k][j];
     }
   _grad[i][j]=_uOut[i][j]*(1-_uOut[i][j])*sum;
 }
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  for(i=1; i<_numLayer && _momentum>0; ++i)
    {
      for(j=0;j<_layerSize[i];++j)
 {
   for(k=0;k<_layerSize[i-1];++k)
     {
#pragma empty_line
#pragma empty_line
#pragma empty_line
       _WandB[i][j][k]+=_momentum*_delta[i][j][k];
     }
#pragma empty_line
#pragma empty_line
#pragma empty_line
   _WandB[i][j][_layerSize[i-1]]+=_momentum*_delta[i][j][_layerSize[i-1]];
 }
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  for(i=1;i<_numLayer;++i)
    {
      for(j=0;j<_layerSize[i];++j)
 {
   for(k=0;k<_layerSize[i-1];++k)
     {
#pragma empty_line
#pragma empty_line
#pragma empty_line
       _delta[i][j][k]=_learnRate*_grad[i][j]*_uOut[i-1][k];
       _WandB[i][j][k]+=_delta[i][j][k];
     }
#pragma empty_line
#pragma empty_line
#pragma empty_line
   _delta[i][j][_layerSize[i-1]]=_learnRate*_grad[i][j];
   _WandB[i][j][_layerSize[i-1]]+=_delta[i][j][_layerSize[i-1]];
 }
    }
  config[0]=3;
  ANN(config, _WandB, __null, __null, __null);
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
double Training::CEE(double *target)
{
  double cee = 0.0;
  int i;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  for(i=0; i<_layerSize[_numLayer-1]; ++i)
    {
      cee+=log(_uOut[_numLayer-1][i])*target[i]*(-1);
    }
#pragma empty_line
  return cee/_layerSize[_numLayer-1];
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
void Training::updateLRandM(double currMCEE, double lastMCEE)
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  if (currMCEE<lastMCEE)
    {
      if(_learnRate<0.8)
 {
   _learnRate*=1.05;
 }
      _momentum=0.15;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  else if (currMCEE>lastMCEE*1.01)
    {
      if(_learnRate>0.01)
 {
   _learnRate*=0.7;
 }
      _momentum=0;
    }
}
#pragma empty_line
void Training::uOutUpdate(double *in)
{
  int config[4 +2];
#pragma empty_line
  config[0]=2;
  ANN(config, __null, _uOut, in, __null);
}
