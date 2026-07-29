import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.activationCascade

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse
