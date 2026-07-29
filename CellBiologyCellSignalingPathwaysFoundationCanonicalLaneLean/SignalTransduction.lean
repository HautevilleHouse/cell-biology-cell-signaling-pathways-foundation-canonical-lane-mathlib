import CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean.SignalReceptorBinding

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure SignalTransductionPackage (R : ReceptorBindingPackage) where
  kinaseCascade : Type u
  secondMessenger : Type v
  phosphorylationEvents : Prop
  signalAmplification : Prop
  branchPoint : Prop

structure SignalTransductionEvidence {R : ReceptorBindingPackage} (T : SignalTransductionPackage R) where
  phosphorylationEventsClosed : T.phosphorylationEvents
  signalAmplificationClosed : T.signalAmplification
  branchPointClosed : T.branchPoint

def SignalTransductionClosed {R : ReceptorBindingPackage} (T : SignalTransductionPackage R) : Prop :=
  T.phosphorylationEvents ∧ T.signalAmplification ∧ T.branchPoint

theorem signal_transduction_closed_from_evidence {R : ReceptorBindingPackage}
    (T : SignalTransductionPackage R) (E : SignalTransductionEvidence T) : SignalTransductionClosed T := by
  exact And.intro E.phosphorylationEventsClosed
    (And.intro E.signalAmplificationClosed E.branchPointClosed)

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse