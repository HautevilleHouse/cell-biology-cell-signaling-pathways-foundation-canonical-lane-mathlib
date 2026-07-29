import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure NotchSignalingPathwayPackage where
  deltaSerrateLag2Binding : Prop
  adamMetalloproteaseCleavage : Prop
  gammaSecretaseCleavage : Prop
  nicdNuclearTranslocation : Prop
  transcriptionalRegulation : Prop

structure NotchSignalingPathwayEvidence (N : NotchSignalingPathwayPackage) where
  deltaSerrateLag2BindingClosed : N.deltaSerrateLag2Binding
  adamMetalloproteaseCleavageClosed : N.adamMetalloproteaseCleavage
  gammaSecretaseCleavageClosed : N.gammaSecretaseCleavage
  nicdNuclearTranslocationClosed : N.nicdNuclearTranslocation
  transcriptionalRegulationClosed : N.transcriptionalRegulation

def NotchSignalingPathwayClosed (N : NotchSignalingPathwayPackage) : Prop :=
  N.deltaSerrateLag2Binding ∧ N.adamMetalloproteaseCleavage ∧ N.gammaSecretaseCleavage ∧ N.nicdNuclearTranslocation ∧ N.transcriptionalRegulation

theorem notch_signaling_pathway_closed_from_evidence
    (N : NotchSignalingPathwayPackage) (E : NotchSignalingPathwayEvidence N) :
    NotchSignalingPathwayClosed N := by
  exact And.intro E.deltaSerrateLag2BindingClosed
    (And.intro E.adamMetalloproteaseCleavageClosed
      (And.intro E.gammaSecretaseCleavageClosed
        (And.intro E.nicdNuclearTranslocationClosed E.transcriptionalRegulationClosed)))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse