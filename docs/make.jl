using Documenter, DescriptorSystems
DocMeta.setdocmeta!(DescriptorSystems, :DocTestSetup, :(using DescriptorSystems); recursive=true)

makedocs(
  modules  = [DescriptorSystems],
  sitename = "DescriptorSystems.jl",
  authors  = "Andreas Varga",
  format   = Documenter.HTML(prettyurls = false),
  pages    = [
     "Home"   => "index.md",
     "Library" => [ 
        "dss.md",
        "rtf.md",
        "operations.md",
        "operations_rtf.md",
        #"connections_rtf.md",
        "order_reduction.md",
        "analysis.md",
        "factorizations.md"
     ],
     "Utilities" => [
        "dstools.md"
     ],
     "Index" => "makeindex.md"
  ]
)

deploydocs(
  repo = "github.com/andreasvarga/DescriptorSystems.jl.git",
  target = "build",
  devbranch = "main"
)