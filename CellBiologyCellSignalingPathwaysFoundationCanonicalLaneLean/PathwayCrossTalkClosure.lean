import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure CrossTalkEvidence (A B : AdmissibleClass) where
  sharedComponent : Prop
  signalIntegration : Prop
  crossTalkClosed : sharedComponent ∧ signalIntegration

def CrossTalkClosure (A B : AdmissibleClass) : Prop :=
  CrossTalkEvidence A B → (admittedClosure A ∧ admittedClosure B)

theorem cross_talk_closure_from_evidence (A B : AdmissibleClass) (E : CrossTalkEvidence A B) :
    admittedClosure A ∧ admittedClosure B := by
  exact And.intro (And.intro (gate_from_admissible_class A) (bridge_from_admissible_class A))
    (And.intro (gate_from_admissible_class B) (bridge_from_admissible_class B))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse
