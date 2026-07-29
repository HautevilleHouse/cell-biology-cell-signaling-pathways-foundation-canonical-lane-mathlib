import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure FeedbackLoopMotifPackage {R : ReceptorLigandInteractionPackage}
    {S : SignalTransductionCascadePackage R} where
  positiveFeedbackLoop : Prop
  negativeFeedbackLoop : Prop
  robustnessAnalysis : Prop
  bistabilityPotential : Prop

structure FeedbackLoopMotifEvidence {R : ReceptorLigandInteractionPackage}
    {S : SignalTransductionCascadePackage R} (F : FeedbackLoopMotifPackage R S) where
  positiveFeedbackLoopClosed : F.positiveFeedbackLoop
  negativeFeedbackLoopClosed : F.negativeFeedbackLoop
  robustnessAnalysisClosed : F.robustnessAnalysis
  bistabilityPotentialClosed : F.bistabilityPotential

def FeedbackLoopMotifClosed {R : ReceptorLigandInteractionPackage}
    {S : SignalTransductionCascadePackage R} (F : FeedbackLoopMotifPackage R S) : Prop :=
  F.positiveFeedbackLoop ∧ F.negativeFeedbackLoop ∧
  F.robustnessAnalysis ∧ F.bistabilityPotential

theorem feedback_loop_motif_closed_from_evidence
    {R : ReceptorLigandInteractionPackage} {S : SignalTransductionCascadePackage R}
    (F : FeedbackLoopMotifPackage R S) (E : FeedbackLoopMotifEvidence F) :
    FeedbackLoopMotifClosed F := by
  exact And.intro E.positiveFeedbackLoopClosed
    (And.intro E.negativeFeedbackLoopClosed
      (And.intro E.robustnessAnalysisClosed E.bistabilityPotentialClosed))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse