import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure SecondMessengerSignalingPackage where
  campProduction : Prop
  pip2Hydrolysis : Prop
  calciumRelease : Prop
  downstreamKinaseActivation : Prop

structure SecondMessengerSignalingEvidence (S : SecondMessengerSignalingPackage) where
  campProductionClosed : S.campProduction
  pip2HydrolysisClosed : S.pip2Hydrolysis
  calciumReleaseClosed : S.calciumRelease
  downstreamKinaseActivationClosed : S.downstreamKinaseActivation

def SecondMessengerSignalingClosed (S : SecondMessengerSignalingPackage) : Prop :=
  S.campProduction ∧ S.pip2Hydrolysis ∧ S.calciumRelease ∧ S.downstreamKinaseActivation

theorem second_messenger_signaling_closed_from_evidence
    (S : SecondMessengerSignalingPackage) (E : SecondMessengerSignalingEvidence S) :
    SecondMessengerSignalingClosed S := by
  exact And.intro E.campProductionClosed
    (And.intro E.pip2HydrolysisClosed
      (And.intro E.calciumReleaseClosed E.downstreamKinaseActivationClosed))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse