import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure NormalEpimorphismPackage {O : MorphismObject} (M : MorphismFamily O) where
  normalEpimorphismCharacterization : Prop
  cokernelExistence : Prop
  coimageCokernelCoincidence : Prop
  preservationUnderPushouts : Prop

structure NormalEpimorphismEvidence {O : MorphismObject} {M : MorphismFamily O}
    (N : NormalEpimorphismPackage M) where
  normalEpimorphismCharacterizationClosed : N.normalEpimorphismCharacterization
  cokernelExistenceClosed : N.cokernelExistence
  coimageCokernelCoincidenceClosed : N.coimageCokernelCoincidence
  preservationUnderPushoutsClosed : N.preservationUnderPushouts

def NormalEpimorphismClosed {O : MorphismObject} {M : MorphismFamily O}
    (N : NormalEpimorphismPackage M) : Prop :=
  N.normalEpimorphismCharacterization ∧ N.cokernelExistence ∧
  N.coimageCokernelCoincidence ∧ N.preservationUnderPushouts

theorem normal_epimorphism_closed_from_evidence
    {O : MorphismObject} {M : MorphismFamily O}
    (N : NormalEpimorphismPackage M) (Ev : NormalEpimorphismEvidence N) :
    NormalEpimorphismClosed N := by
  exact And.intro Ev.normalEpimorphismCharacterizationClosed
    (And.intro Ev.cokernelExistenceClosed
      (And.intro Ev.coimageCokernelCoincidenceClosed Ev.preservationUnderPushoutsClosed))

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
