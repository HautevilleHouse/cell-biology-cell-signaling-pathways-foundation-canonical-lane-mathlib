import CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean.KinaseReceptorActivation

/-!
# MAPK/ERK Signaling Cascade Package
-/

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure MAPKCascadePackage {L : LigandReceptorBindingPackage}
    {K : KinaseActivationPackage L} where
  rasActivation : Prop
  rafPhosphorylation : Prop
  mekPhosphorylation : Prop
  erkActivation : Prop
  transcriptionFactorRegulation : Prop

structure MAPKCascadeEvidence {L : LigandReceptorBindingPackage}
    {K : KinaseActivationPackage L} (M : MAPKCascadePackage K) where
  rasActivationClosed : M.rasActivation
  rafPhosphorylationClosed : M.rafPhosphorylation
  mekPhosphorylationClosed : M.mekPhosphorylation
  erkActivationClosed : M.erkActivation
  transcriptionFactorRegulationClosed : M.transcriptionFactorRegulation

def MAPKCascadeClosed {L : LigandReceptorBindingPackage}
    {K : KinaseActivationPackage L} (M : MAPKCascadePackage K) : Prop :=
  M.rasActivation ∧ M.rafPhosphorylation ∧
  M.mekPhosphorylation ∧ M.erkActivation ∧ M.transcriptionFactorRegulation

theorem mapk_cascade_closed_from_evidence
    {L : LigandReceptorBindingPackage} {K : KinaseActivationPackage L}
    (M : MAPKCascadePackage K) (E : MAPKCascadeEvidence M) : MAPKCascadeClosed M := by
  exact And.intro E.rasActivationClosed
    (And.intro E.rafPhosphorylationClosed
      (And.intro E.mekPhosphorylationClosed
        (And.intro E.erkActivationClosed E.transcriptionFactorRegulationClosed)))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse
