module Complexity
  using Plots

  function fun1(x)
    b = 1.1
    return x * 1.1 + b
  end

  function fun2(x)
    b = 1.9
    return x * 1.1 + b
  end

  function func(fun)
    return (m, x) -> append!(m, isempty(m) ? fun(x) : fun(last(m)))
  end

  function plt(fn, xs; title="", label=[])
    return plot(xs, reduce(func(fn), xs; init=Float64[]), title=title, label=label)
  end

  function plt!(fn, p, xs; title="", label=[])
    return plot!(p, xs, reduce(func(fn), xs; init=Float64[]), title=title, label=label)
  end

  function main()
    p = plt(fun1, 1:30, label=["A"])
    plt!(fun2, p, 1:30, label=["B"])
  end
end
