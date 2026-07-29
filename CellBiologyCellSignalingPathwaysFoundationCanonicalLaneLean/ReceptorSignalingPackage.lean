import HautevilleHouse.CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean.CanonicalAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure ReceptorLigandPackage where
  receptorAffinity : Prop
  ligandBinding : Prop
  conformationalChange : Prop

def ReceptorLigandPackageClosed (R : ReceptorLigandPackage) : Prop :=
  R.receptorAffinity ∧ R.ligandBinding ∧ R.conformationalChange

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse
