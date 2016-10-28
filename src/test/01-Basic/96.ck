// 96.ck : nested classes with methods with default arguments

class Default
{
    
    fun int foo(int y; 0 => int z)
    {
        return y + z;
    }
    fun float foo2(1 => int x, 2.5 => float hi)
    {
        return x + hi;
    }
    
    class Inner
    {
        fun int foo(int y; 0 => int z)
        {
            return y + z;
        }
        fun float foo2(1 => int x, 2.5 => float hi)
        {
            return x + hi;
        }
    }
    Inner baz;
}

Default bar;
if (bar.foo(3, 2) == 5 &&
    bar.foo(3) == 3 &&
    bar.foo2(3, 2.) == 5. &&
    bar.foo2(3) == 5.5 &&
    bar.foo2() == 3.5 &&
    bar.baz.foo(3, 2) == 5 &&
    bar.baz.foo(3) == 3 &&
    bar.baz.foo2(3, 2.) == 5. &&
    bar.baz.foo2(3) == 5.5 &&
    bar.baz.foo2() == 3.5)
{
    <<<"success">>>;
}
