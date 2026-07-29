import CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean.CellSignalingAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellSignalingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse