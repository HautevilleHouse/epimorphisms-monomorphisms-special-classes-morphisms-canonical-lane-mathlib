import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure EpimorphismPackage where
  leftCancellative : Prop
  surjectiveInCategory : Prop
  epiStableUnderPushout : Prop

def EpimorphismClosed (E : EpimorphismPackage) : Prop :=
  E.leftCancellative ∧ E.surjectiveInCategory ∧ E.epiStableUnderPushout

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse