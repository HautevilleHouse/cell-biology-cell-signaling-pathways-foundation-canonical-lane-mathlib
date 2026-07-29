import CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean.SignalTransduction

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure SignalTerminationPackage {R : ReceptorBindingPackage} {T : SignalTransductionPackage R} where
  phosphataseActivity : Prop
  receptorDesensitization : Prop
  feedbackInhibition : Prop
  signalReset : Prop

structure SignalTerminationEvidence {R : ReceptorBindingPackage} {T : SignalTransductionPackage R}
    (S : SignalTerminationPackage T) where
  phosphataseActivityClosed : S.phosphataseActivity
  receptorDesensitizationClosed : S.receptorDesensitization
  feedbackInhibitionClosed : S.feedbackInhibition
  signalResetClosed : S.signalReset

def SignalTerminationClosed {R : ReceptorBindingPackage} {T : SignalTransductionPackage R}
    (S : SignalTerminationPackage T) : Prop :=
  S.phosphataseActivity ∧ S.receptorDesensitization ∧ S.feedbackInhibition ∧ S.signalReset

theorem signal_termination_closed_from_evidence {R : ReceptorBindingPackage} {T : SignalTransductionPackage R}
    (S : SignalTerminationPackage T) (E : SignalTerminationEvidence S) : SignalTerminationClosed S := by
  exact And.intro E.phosphataseActivityClosed
    (And.intro E.receptorDesensitizationClosed
      (And.intro E.feedbackInhibitionClosed E.signalResetClosed))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse