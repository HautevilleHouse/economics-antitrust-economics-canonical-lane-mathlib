import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure GrowthModelPackage where
  capitalStock : Type u
  laborSupply : Type v
  productionFunction : capitalStock → laborSupply → ℝ
  savingRate : ℝ
  depreciationRate : ℝ
  steadyStateTheorem : Prop
  convergenceTheorem : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  steadyStateTheoremClosed : G.steadyStateTheorem
  convergenceTheoremClosed : G.convergenceTheorem

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.steadyStateTheorem ∧ G.convergenceTheorem

theorem growth_model_closed_from_evidence (G : GrowthModelPackage) (E : GrowthModelEvidence G) :
    GrowthModelClosed G := by
  exact And.intro E.steadyStateTheoremClosed E.convergenceTheoremClosed

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse