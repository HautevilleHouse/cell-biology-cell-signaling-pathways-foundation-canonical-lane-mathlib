import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

def ConstrainedSignalingPathwayClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_signaling_pathway_endgame (A : AdmissibleClass) : ConstrainedSignalingPathwayClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse