import CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SignalingPathwaySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SignalingPathwayAdmittedObject where
  space : SignalingPathwaySpace
  pathwayDefined : Prop
  signalTransduced : Prop
  targetFunction : Type
  targetTopology : TopologicalSpace targetFunction
  pathwayComplete : Prop
  conclusion : pathwayComplete

structure SignalingPathwayEndgameState where
  object : SignalingPathwayAdmittedObject

def SignalingPathwayWitnessClosed (O : SignalingPathwayAdmittedObject) : Prop :=
  O.pathwayComplete

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse
