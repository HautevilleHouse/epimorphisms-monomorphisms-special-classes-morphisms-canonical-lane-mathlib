import EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EpimorphismMonomorphismClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse