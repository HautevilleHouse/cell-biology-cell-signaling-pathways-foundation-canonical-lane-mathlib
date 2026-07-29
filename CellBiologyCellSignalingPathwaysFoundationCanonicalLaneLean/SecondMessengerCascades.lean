import canonicalLaneMathlib.AdmissibleClass

/-!
# Second Messenger Cascades Package
-/

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure SecondMessengerCascadesPackage where
  secondMessengerTypes : Type u
  amplificationFactor : ℝ
  signalDuration : ℝ
  relayMechanism : Prop
  feedbackRegulation : Prop
  crossTalk : Prop

structure SecondMessengerCascadesEvidence (S : SecondMessengerCascadesPackage) where
  relayMechanismClosed : S.relayMechanism
  feedbackRegulationClosed : S.feedbackRegulation
  crossTalkClosed : S.crossTalk

def SecondMessengerCascadesClosed (S : SecondMessengerCascadesPackage) : Prop :=
  S.relayMechanism ∧ S.feedbackRegulation ∧ S.crossTalk

theorem second_messenger_cascades_closed_from_evidence
    (S : SecondMessengerCascadesPackage) (E : SecondMessengerCascadesEvidence S) :
    SecondMessengerCascadesClosed S := by
  exact And.intro E.relayMechanismClosed
    (And.intro E.feedbackRegulationClosed E.crossTalkClosed)

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse