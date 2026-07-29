import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure GameTheoryPackage where
  playerSet : Type u
  strategySpace : playerSet → Type v
  payoffFunction : (p : playerSet) → strategySpace p → ℝ
  nashEquilibriumCondition : Prop
  efficiencyCondition : Prop

structure GameTheoryEvidence (G : GameTheoryPackage) where
  nashEquilibriumConditionClosed : G.nashEquilibriumCondition
  efficiencyConditionClosed : G.efficiencyCondition

def GameTheoryClosed (G : GameTheoryPackage) : Prop :=
  G.nashEquilibriumCondition ∧ G.efficiencyCondition

theorem game_theory_closed_from_evidence (G : GameTheoryPackage) (E : GameTheoryEvidence G) :
    GameTheoryClosed G := by
  exact And.intro E.nashEquilibriumConditionClosed E.efficiencyConditionClosed

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse