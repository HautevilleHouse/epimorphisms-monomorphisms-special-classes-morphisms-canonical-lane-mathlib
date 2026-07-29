import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure NormalMonomorphismPackage {O : MorphismObject} (M : MorphismFamily O) where
  normalMonomorphismCharacterization : Prop
  kernelExistence : Prop
  imageKernelCoincidence : Prop
  preservationUnderPullbacks : Prop

structure NormalMonomorphismEvidence {O : MorphismObject} {M : MorphismFamily O}
    (N : NormalMonomorphismPackage M) where
  normalMonomorphismCharacterizationClosed : N.normalMonomorphismCharacterization
  kernelExistenceClosed : N.kernelExistence
  imageKernelCoincidenceClosed : N.imageKernelCoincidence
  preservationUnderPullbacksClosed : N.preservationUnderPullbacks

def NormalMonomorphismClosed {O : MorphismObject} {M : MorphismFamily O}
    (N : NormalMonomorphismPackage M) : Prop :=
  N.normalMonomorphismCharacterization ∧ N.kernelExistence ∧
  N.imageKernelCoincidence ∧ N.preservationUnderPullbacks

theorem normal_monomorphism_closed_from_evidence
    {O : MorphismObject} {M : MorphismFamily O}
    (N : NormalMonomorphismPackage M) (Ev : NormalMonomorphismEvidence N) :
    NormalMonomorphismClosed N := by
  exact And.intro Ev.normalMonomorphismCharacterizationClosed
    (And.intro Ev.kernelExistenceClosed
      (And.intro Ev.imageKernelCoincidenceClosed Ev.preservationUnderPullbacksClosed))

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
