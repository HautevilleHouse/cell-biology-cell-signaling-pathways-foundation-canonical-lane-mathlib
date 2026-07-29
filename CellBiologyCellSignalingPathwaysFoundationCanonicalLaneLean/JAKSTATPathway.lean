import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure JAKSTATSignalPackage where
  cytokineBinding : Prop
  receptorDimerization : Prop
  jakActivation : Prop
  statPhosphorylation : Prop
  statDimerization : Prop
  nuclearTranslocation : Prop
  targetGeneTranscription : Prop

structure JAKSTATSignalEvidence (J : JAKSTATSignalPackage) where
  cytokineBindingClosed : J.cytokineBinding
  receptorDimerizationClosed : J.receptorDimerization
  jakActivationClosed : J.jakActivation
  statPhosphorylationClosed : J.statPhosphorylation
  statDimerizationClosed : J.statDimerization
  nuclearTranslocationClosed : J.nuclearTranslocation
  targetGeneTranscriptionClosed : J.targetGeneTranscription

def JAKSTATSignalClosed (J : JAKSTATSignalPackage) : Prop :=
  J.cytokineBinding ∧ J.receptorDimerization ∧
  J.jakActivation ∧ J.statPhosphorylation ∧
  J.statDimerization ∧ J.nuclearTranslocation ∧
  J.targetGeneTranscription

theorem jakstat_signal_closed_from_evidence (J : JAKSTATSignalPackage)
    (E : JAKSTATSignalEvidence J) : JAKSTATSignalClosed J :=
  And.intro E.cytokineBindingClosed
    (And.intro E.receptorDimerizationClosed
      (And.intro E.jakActivationClosed
        (And.intro E.statPhosphorylationClosed
          (And.intro E.statDimerizationClosed
            (And.intro E.nuclearTranslocationClosed E.targetGeneTranscriptionClosed)))))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse