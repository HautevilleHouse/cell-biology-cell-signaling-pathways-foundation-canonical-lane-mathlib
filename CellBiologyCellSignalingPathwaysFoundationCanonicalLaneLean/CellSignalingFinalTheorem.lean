import CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean.CellSignalingGateLemmas

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

def ConstrainedCellSignalingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_signaling_endgame (A : AdmissibleClass) :
    ConstrainedCellSignalingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse