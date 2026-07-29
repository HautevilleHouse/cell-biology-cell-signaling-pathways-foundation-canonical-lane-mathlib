import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure HedgehogSignalPackage where
  hhLigandBinding : Prop
  patchedInhibition : Prop
  smoActivation : Prop
  gliTranscriptionFactorProcessing : Prop
  activatorRepressorBalance : Prop
  targetGeneExpression : Prop

structure HedgehogSignalEvidence (H : HedgehogSignalPackage) where
  hhLigandBindingClosed : H.hhLigandBinding
  patchedInhibitionClosed : H.patchedInhibition
  smoActivationClosed : H.smoActivation
  gliTranscriptionFactorProcessingClosed : H.gliTranscriptionFactorProcessing
  activatorRepressorBalanceClosed : H.activatorRepressorBalance
  targetGeneExpressionClosed : H.targetGeneExpression

def HedgehogSignalClosed (H : HedgehogSignalPackage) : Prop :=
  H.hhLigandBinding ∧ H.patchedInhibition ∧
  H.smoActivation ∧ H.gliTranscriptionFactorProcessing ∧
  H.activatorRepressorBalance ∧ H.targetGeneExpression

theorem hedgehog_signal_closed_from_evidence (H : HedgehogSignalPackage)
    (E : HedgehogSignalEvidence H) : HedgehogSignalClosed H :=
  And.intro E.hhLigandBindingClosed
    (And.intro E.patchedInhibitionClosed
      (And.intro E.smoActivationClosed
        (And.intro E.gliTranscriptionFactorProcessingClosed
          (And.intro E.activatorRepressorBalanceClosed E.targetGeneExpressionClosed))))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse