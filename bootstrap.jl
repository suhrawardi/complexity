pwd() == joinpath(@__DIR__, "bin") && cd(@__DIR__)

using Complexity
Complexity.main()
