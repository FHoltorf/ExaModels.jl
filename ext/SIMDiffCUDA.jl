module SIMDiffCUDA

using SIMDiff: SIMDiff, NLPModels
using CUDA

SIMDiff.Core(backend::CUDABackend) = SIMDiff.Core(Float64, backend)
SIMDiff.Core(T, backend::CUDABackend) = SIMDiff.Core(x0 = CUDA.zeros(T,0), backend = backend)
SIMDiff.convert_array(v, backend::CUDABackend) = CuArray(v)

end
