import canonicalLaneMathlib.AdmissibleClass
import EpimorphismProperties
import MonomorphismProperties
import SpecialMorphismClasses

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure AdmissibleMorphismClass where
  object : AdmittedObject
  epiClosed : EpimorphismClosed default
  monoClosed : MonomorphismClosed default
  specialClosed : SpecialMorphismClosed default

def bridgeClosed (A : AdmissibleMorphismClass) : Prop :=
  A.epiClosed ∧ A.monoClosed ∧ A.specialClosed

theorem bridge_from_admissible_class (A : AdmissibleMorphismClass) : bridgeClosed A :=
  And.intro A.epiClosed (And.intro A.monoClosed A.specialClosed)

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse