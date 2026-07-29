import EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  epiSatisfied : Prop
  monoSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : (epiSatisfied ∧ monoSatisfied) ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EpimorphismMonomorphismClosed A.object ∧ ((A.epiSatisfied ∧ A.monoSatisfied) ∨ A.remainderRecorded)

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse