import canonicalLaneMathlib.AdmissibleClass

/-!
# Ligand-Receptor Binding Package
-/

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure LigandReceptorBindingPackage where
  ligandConcentration : ℝ
  receptorDensity : ℝ
  bindingAffinity : ℝ
  saturationKinetics : Prop
  equilibriumConstant : Prop

def bindingAffinityPositive : LigandReceptorBindingPackage → Prop := λ p => p.bindingAffinity > 0

structure LigandReceptorBindingEvidence (L : LigandReceptorBindingPackage) where
  saturationKineticsClosed : L.saturationKinetics
  equilibriumConstantClosed : L.equilibriumConstant
  bindingAffinityPositiveClosed : bindingAffinityPositive L

def LigandReceptorBindingClosed (L : LigandReceptorBindingPackage) : Prop :=
  bindingAffinityPositive L ∧ L.saturationKinetics ∧ L.equilibriumConstant

theorem ligand_receptor_binding_closed_from_evidence
    (L : LigandReceptorBindingPackage) (E : LigandReceptorBindingEvidence L) :
    LigandReceptorBindingClosed L := by
  exact And.intro E.bindingAffinityPositiveClosed
    (And.intro E.saturationKineticsClosed E.equilibriumConstantClosed)

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse