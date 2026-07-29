import CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def signalingPathwayProjection : Projection SignalingPathwayEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem signaling_pathway_projection_idempotent (x : SignalingPathwayEndgameState) :
    signalingPathwayProjection.toFun (signalingPathwayProjection.toFun x) = signalingPathwayProjection.toFun x := by
  exact signalingPathwayProjection.idempotent x

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse
