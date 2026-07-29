import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure ReceptorObject where
  receptorType : Type
  ligandBinding : Prop
  conformationalChange : Prop
  activationCascade : Prop
  conclusion : activationCascade

structure AdmissibleClass where
  object : ReceptorObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  gateClosed A ∧ bridgeClosed A

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse
