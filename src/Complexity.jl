module Complexity
  using Plots

  function fun(m, x)
      return append!(m, isempty(m) ? x * 1.1 : last(m) * 1.1)
  end

  function plt(fn, xs)
    plot(xs, reduce(fn, xs; init=Float64[]))
  end

  function main()
    plt(fun, 1:30)
  end
end
