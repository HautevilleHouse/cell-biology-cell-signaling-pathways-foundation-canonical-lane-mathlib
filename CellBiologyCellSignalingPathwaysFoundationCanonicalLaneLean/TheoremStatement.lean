import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure CellSignalingAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  signalTransductionNetwork : Prop
  receptorLigandBinding : Prop
  intracellularCascade : Prop
  downstreamEffects : Prop
  conclusion : signalTransductionNetwork ∧ receptorLigandBinding ∧ intracellularCascade ∧ downstreamEffects

def CellSignalingWitnessClosed (O : CellSignalingAdmittedObject) : Prop :=
  O.signalTransductionNetwork ∧ O.receptorLigandBinding ∧ O.intracellularCascade ∧ O.downstreamEffects

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse
