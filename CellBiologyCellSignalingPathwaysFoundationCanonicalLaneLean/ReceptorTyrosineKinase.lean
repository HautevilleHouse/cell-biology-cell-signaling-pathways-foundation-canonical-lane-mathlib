import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure RTKSignalPackage where
  receptorDimerization : Prop
  autophosphorylation : Prop
  sh2DomainRecruitment : Prop
  rasActivation : Prop
  mapkCascade : Prop
  geneExpressionChange : Prop

structure RTKSignalEvidence (R : RTKSignalPackage) where
  receptorDimerizationClosed : R.receptorDimerization
  autophosphorylationClosed : R.autophosphorylation
  sh2DomainRecruitmentClosed : R.sh2DomainRecruitment
  rasActivationClosed : R.rasActivation
  mapkCascadeClosed : R.mapkCascade
  geneExpressionChangeClosed : R.geneExpressionChange

def RTKSignalClosed (R : RTKSignalPackage) : Prop :=
  R.receptorDimerization ∧ R.autophosphorylation ∧
  R.sh2DomainRecruitment ∧ R.rasActivation ∧
  R.mapkCascade ∧ R.geneExpressionChange

theorem rtk_signal_closed_from_evidence (R : RTKSignalPackage)
    (E : RTKSignalEvidence R) : RTKSignalClosed R :=
  And.intro E.receptorDimerizationClosed
    (And.intro E.autophosphorylationClosed
      (And.intro E.sh2DomainRecruitmentClosed
        (And.intro E.rasActivationClosed
          (And.intro E.mapkCascadeClosed E.geneExpressionChangeClosed))))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse