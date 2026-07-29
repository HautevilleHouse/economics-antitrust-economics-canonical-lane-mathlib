import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure AssetPricingPackage where
  stateSpace : Type u
  assetSpace : Type v
  payoffFunction : assetSpace → stateSpace → ℝ
  pricingKernel : stateSpace → ℝ
  noArbitrageCondition : Prop
  fundamentalTheorem : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  noArbitrageConditionClosed : A.noArbitrageCondition
  fundamentalTheoremClosed : A.fundamentalTheorem

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.noArbitrageCondition ∧ A.fundamentalTheorem

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage) (E : AssetPricingEvidence A) :
    AssetPricingClosed A := by
  exact And.intro E.noArbitrageConditionClosed E.fundamentalTheoremClosed

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse