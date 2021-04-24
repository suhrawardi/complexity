module Complexity
  using Plots

  function fun2(x)
    b = 1.9
    return x * 1.1 + b
  end

  function func(fun)
    return (m, x) -> append!(m, isempty(m) ? fun(x) : fun(last(m)))
  end

  function plt(fn, xs)
    plot(xs, reduce(func(fn), xs; init=Float64[]))
  end

  function main()
    plt(fun2, 1:30)
  end
end
