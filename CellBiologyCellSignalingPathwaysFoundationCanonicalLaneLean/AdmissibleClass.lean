import CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : SignalingPathwayAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SignalingPathwayWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse
