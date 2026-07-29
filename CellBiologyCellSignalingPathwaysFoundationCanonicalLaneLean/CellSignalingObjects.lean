import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure CellSignalingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellSignalingAdmittedObject where
  space : CellSignalingSpace
  signalingPathwayDefined : Prop
  signalTransductionComplete : Prop
  cellularResponse : Type
  responseTopology : TopologicalSpace cellularResponse
  responseMatchesPathway : Prop
  conclusion : responseMatchesPathway

structure CellSignalingEndgameState where
  object : CellSignalingAdmittedObject

def CellSignalingWitnessClosed (O : CellSignalingAdmittedObject) : Prop :=
  O.responseMatchesPathway

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse