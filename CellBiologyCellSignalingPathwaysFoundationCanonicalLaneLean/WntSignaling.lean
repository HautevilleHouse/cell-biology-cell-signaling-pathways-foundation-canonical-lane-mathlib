import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure WntSignalPackage where
  wntLigandBinding : Prop
  frizzledReceptorActivation : Prop
  dishevelledRecruitment : Prop
  gsk3BetaInhibition : Prop
  betaCateninStabilization : Prop
  nuclearTranslocation : Prop
  tcfLefTranscription : Prop

structure WntSignalEvidence (W : WntSignalPackage) where
  wntLigandBindingClosed : W.wntLigandBinding
  frizzledReceptorActivationClosed : W.frizzledReceptorActivation
  dishevelledRecruitmentClosed : W.dishevelledRecruitment
  gsk3BetaInhibitionClosed : W.gsk3BetaInhibition
  betaCateninStabilizationClosed : W.betaCateninStabilization
  nuclearTranslocationClosed : W.nuclearTranslocation
  tcfLefTranscriptionClosed : W.tcfLefTranscription

def WntSignalClosed (W : WntSignalPackage) : Prop :=
  W.wntLigandBinding ∧ W.frizzledReceptorActivation ∧
  W.dishevelledRecruitment ∧ W.gsk3BetaInhibition ∧
  W.betaCateninStabilization ∧ W.nuclearTranslocation ∧
  W.tcfLefTranscription

theorem wnt_signal_closed_from_evidence (W : WntSignalPackage)
    (E : WntSignalEvidence W) : WntSignalClosed W :=
  And.intro E.wntLigandBindingClosed
    (And.intro E.frizzledReceptorActivationClosed
      (And.intro E.dishevelledRecruitmentClosed
        (And.intro E.gsk3BetaInhibitionClosed
          (And.intro E.betaCateninStabilizationClosed
            (And.intro E.nuclearTranslocationClosed E.tcfLefTranscriptionClosed)))))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse