import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure AnticompetitiveConduct where
  priceFixing : Prop
  marketAllocation : Prop
  predatoryPricing : Bool
  exclusiveDealing : Prop
  verticalRestraints : Prop

structure AnticompetitiveConductEvidence (C : AnticompetitiveConduct) where
  priceFixingClosed : C.priceFixing
  marketAllocationClosed : C.marketAllocation
  predatoryPricingClosed : C.predatoryPricing = false

def AnticompetitiveConductClosed (C : AnticompetitiveConduct) : Prop :=
  C.priceFixing ∧ C.marketAllocation ∧ ¬ C.predatoryPricing

theorem anticompetitive_conduct_closed_from_evidence (C : AnticompetitiveConduct) (E : AnticompetitiveConductEvidence C) : AnticompetitiveConductClosed C := by
  exact And.intro E.priceFixingClosed (And.intro E.marketAllocationClosed E.predatoryPricingClosed)

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse