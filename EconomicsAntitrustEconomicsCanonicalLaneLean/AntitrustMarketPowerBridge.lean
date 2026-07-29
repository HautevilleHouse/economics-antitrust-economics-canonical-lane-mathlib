import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure MarketPowerPackage where
  marketStructure : Type u
  firmBehavior : Type v
  demandSystem : Type w
  competitionModel : marketStructure → Prop
  welfareLossMeasure : Prop
  antitrustRemedy : Prop

structure MarketPowerEvidence (M : MarketPowerPackage) where
  competitionModelClosed : M.competitionModel
  welfareLossMeasureClosed : M.welfareLossMeasure
  antitrustRemedyClosed : M.antitrustRemedy

def MarketPowerClosed (M : MarketPowerPackage) : Prop :=
  M.competitionModel ∧ M.welfareLossMeasure ∧ M.antitrustRemedy

theorem market_power_closed_from_evidence (M : MarketPowerPackage) (E : MarketPowerEvidence M) :
    MarketPowerClosed M := by
  exact And.intro E.competitionModelClosed
    (And.intro E.welfareLossMeasureClosed E.antitrustRemedyClosed)

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse