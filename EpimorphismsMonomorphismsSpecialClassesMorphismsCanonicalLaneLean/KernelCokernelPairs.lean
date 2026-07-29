import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure KernelCokernelPairPackage (A : AdmissibleClass) where
  kernelPairPresent : Prop
  cokernelPairPresent : Prop
  kernelCokernelCorrespondence : Prop

structure KernelCokernelPairEvidence {A : AdmissibleClass} (P : KernelCokernelPairPackage A) where
  kernelPairPresentClosed : P.kernelPairPresent
  cokernelPairPresentClosed : P.cokernelPairPresent
  kernelCokernelCorrespondenceClosed : P.kernelCokernelCorrespondence

def KernelCokernelPairClosed {A : AdmissibleClass} (P : KernelCokernelPairPackage A) : Prop :=
  P.kernelPairPresent ∧ P.cokernelPairPresent ∧ P.kernelCokernelCorrespondence

theorem kernel_cokernel_pair_closed_from_evidence
    {A : AdmissibleClass} (P : KernelCokernelPairPackage A) 
    (E : KernelCokernelPairEvidence P) : KernelCokernelPairClosed P :=
  And.intro E.kernelPairPresentClosed (And.intro E.cokernelPairPresentClosed E.kernelCokernelCorrespondenceClosed)

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
