import canonicalLaneMathlib.AdmissibleClass

/-!
# G-Protein Coupled Receptors Package
-/

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure GProteinCoupledReceptorsPackage where
  gpcFamily : Type u
  ligandBindingGpc : Prop
  gProteinActivation : Prop
  effectorModulation : Prop
  secondMessengerGeneration : Prop
  desensitization : Prop

structure GProteinCoupledReceptorsEvidence (G : GProteinCoupledReceptorsPackage) where
  ligandBindingGpcClosed : G.ligandBindingGpc
  gProteinActivationClosed : G.gProteinActivation
  effectorModulationClosed : G.effectorModulation
  secondMessengerGenerationClosed : G.secondMessengerGeneration
  desensitizationClosed : G.desensitization

def GProteinCoupledReceptorsClosed (G : GProteinCoupledReceptorsPackage) : Prop :=
  G.ligandBindingGpc ∧ G.gProteinActivation ∧ G.effectorModulation ∧ G.secondMessengerGeneration ∧ G.desensitization

theorem g_protein_coupled_receptors_closed_from_evidence
    (G : GProteinCoupledReceptorsPackage) (E : GProteinCoupledReceptorsEvidence G) :
    GProteinCoupledReceptorsClosed G := by
  exact And.intro E.ligandBindingGpcClosed
    (And.intro E.gProteinActivationClosed
      (And.intro E.effectorModulationClosed
        (And.intro E.secondMessengerGenerationClosed E.desensitizationClosed)))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse