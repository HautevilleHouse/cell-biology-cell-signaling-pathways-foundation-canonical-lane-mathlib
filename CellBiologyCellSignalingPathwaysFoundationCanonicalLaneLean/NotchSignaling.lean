import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure NotchSignalPackage where
  deltaJaggedBinding : Prop
  s2Cleavage : Prop
  s3Cleavage : Prop
  nicdNuclearTranslocation : Prop
  cslMamlComplexFormation : Prop
  targetGeneActivation : Prop

structure NotchSignalEvidence (N : NotchSignalPackage) where
  deltaJaggedBindingClosed : N.deltaJaggedBinding
  s2CleavageClosed : N.s2Cleavage
  s3CleavageClosed : N.s3Cleavage
  nicdNuclearTranslocationClosed : N.nicdNuclearTranslocation
  cslMamlComplexFormationClosed : N.cslMamlComplexFormation
  targetGeneActivationClosed : N.targetGeneActivation

def NotchSignalClosed (N : NotchSignalPackage) : Prop :=
  N.deltaJaggedBinding ∧ N.s2Cleavage ∧
  N.s3Cleavage ∧ N.nicdNuclearTranslocation ∧
  N.cslMamlComplexFormation ∧ N.targetGeneActivation

theorem notch_signal_closed_from_evidence (N : NotchSignalPackage)
    (E : NotchSignalEvidence N) : NotchSignalClosed N :=
  And.intro E.deltaJaggedBindingClosed
    (And.intro E.s2CleavageClosed
      (And.intro E.s3CleavageClosed
        (And.intro E.nicdNuclearTranslocationClosed
          (And.intro E.cslMamlComplexFormationClosed E.targetGeneActivationClosed))))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse