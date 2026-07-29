import HautevilleHouse.CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean.SignalTransductionCascade

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure TranscriptionPackage {R : ReceptorLigandPackage} {C : CascadePackage R} where
  nuclearTranslocation : Prop
  transcriptionFactorBinding : Prop
  geneExpression : Prop

def TranscriptionPackageClosed {R : ReceptorLigandPackage} {C : CascadePackage R} (T : TranscriptionPackage C) : Prop :=
  T.nuclearTranslocation ∧ T.transcriptionFactorBinding ∧ T.geneExpression

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse
