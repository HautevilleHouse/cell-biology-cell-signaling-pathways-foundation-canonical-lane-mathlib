import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure CellSignalingAdmissibleObject where
  cellType : Type u
  receptor : Type v
  ligand : Type w
  signalingState : Prop
  pathwayConvergence : Prop
  conclusion : pathwayConvergence

def admittedClosure (A : CellSignalingAdmissibleObject) : Prop :=
  A.pathwayConvergence

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse
