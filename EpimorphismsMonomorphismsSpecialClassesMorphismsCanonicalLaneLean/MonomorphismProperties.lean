import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure MonomorphismPackage where
  rightCancellative : Prop
  injectiveInCategory : Prop
  monoStableUnderPullback : Prop

def MonomorphismClosed (M : MonomorphismPackage) : Prop :=
  M.rightCancellative ∧ M.injectiveInCategory ∧ M.monoStableUnderPullback

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse