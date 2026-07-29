import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure CellSignalingAdmittedObject where
  pathwayComplete : Prop
  signalTransduced : Prop
  conclusion : signalTransduced

def CellSignalingWitnessClosed (O : CellSignalingAdmittedObject) : Prop :=
  O.signalTransduced

structure AdmissibleClass where
  object : CellSignalingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellSignalingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse