import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure MonomorphismPackage where
  sourceCategory : Type u
  targetCategory : Type v
  monomorphismProperty : (sourceCategory → targetCategory) → Prop
  monomorphismPreserved : Prop
  leftCancellative : Prop
  pullbackStability : Prop

structure MonomorphismEvidence (M : MonomorphismPackage) where
  monomorphismPreservedClosed : M.monomorphismPreserved
  leftCancellativeClosed : M.leftCancellative
  pullbackStabilityClosed : M.pullbackStability

def MonomorphismClosed (M : MonomorphismPackage) : Prop :=
  M.monomorphismPreserved ∧ M.leftCancellative ∧ M.pullbackStability

theorem monomorphism_closed_from_evidence (M : MonomorphismPackage) (Ev : MonomorphismEvidence M) :
    MonomorphismClosed M := by
  exact And.intro Ev.monomorphismPreservedClosed (And.intro Ev.leftCancellativeClosed Ev.pullbackStabilityClosed)

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
