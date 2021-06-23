module DataFramesMeta

using Reexport

using MacroTools

@reexport using DataFrames

@reexport using Chain

# Basics:
export @with, @where, @orderby, @transform, @by, @combine, @select,
       @transform!, @select!,
       @eachrow, @eachrow!,
       @byrow,
       @based_on # deprecated


global const DATAFRAMES_GEQ_22 = isdefined(DataFrames, :pretty_table) ? true : false

include("parsing.jl")
include("macros.jl")
include("linqmacro.jl")
include("eachrow.jl")

end # module