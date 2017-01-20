FTC_Save    = {};
FTC_SaveKey = "";
TRADECOOLDOWNFU_NOTIFYTIME = 60;

if ( GetLocale() == "koKR" ) then																			-- techys (from)
	TRADECOOLDOWNFU_READYNOTIFY0 = "|cff00FF00TradeCooldown:|r %s for %s:%s 준비.";
	TRADECOOLDOWNFU_READYNOTIFY1 = "|cff00FF00TradeCooldown:|r %s for %s:%s 는 %ss 준비됩니다.";
	TRADECOOLDOWNFU_READY_COLOR = "|cff00FF00";
	TRADECOOLDOWNFU_NOTREADY_COLOR = "|cffFF0000";
	TRADECOOLDOWNFU_ALMOSTREADY_COLOR = "|cffF0F000";
	TRADECOOLDOWNFU_CONFIRM = "모든 전문기술 쿨다운 자료를 삭제하시겠습니까?";
	TRADECOOLDOWNFU_FORMAT = "%d/%d";
	TRADECOOLDOWNFU_READY = "준비!";
	TRADECOOLDOWNFU_MOONCLOTH = "달빛 옷감";
	TRADECOOLDOWNFU_SALTSHAKER = "소금 정제기";
	TRADECOOLDOWNFU_REFINEDSALT = "정제된 깊은바다 소금";
	TRADECOOLDOWNFU_SNOWMASTER = "눈뭉치제조기 9000";
	TRADECOOLDOWNFU_SNOWBALL = "눈뭉치";
	TRADECOOLDOWNFU_ELUNESLANTERN = "엘룬의 등불";
	TRADECOOLDOWNFU_ELUNESTONE = "엘룬의 돌";
	TRADECOOLDOWNFU_TRANSMUTE_MATCH = "변환식";
	TRADECOOLDOWNFU_TRANSMUTES = "변환";
	TRADECOOLDOWNFU_NODATA = "자료 없음";
	TRADECOOLDOWNFU_CREATESEARCH = "아이템을 획득했습니다: (.*).";
	TRADECOOLDOWNFU_BUTTON_LABEL = "쿨다운 : ";
	TRADECOOLDOWNFU_FORMATFULL="%dd %dh %dm %ds";
elseif ( GetLocale() == "ruRU" ) then
	TRADECOOLDOWNFU_READYNOTIFY0 = "|cff00FF00TradeCooldown:|r %s для %s:%s готов.";
	TRADECOOLDOWNFU_READYNOTIFY1 = "|cff00FF00TradeCooldown:|r %s для %s:%s будет готов через %ss.";
	TRADECOOLDOWNFU_READY_COLOR = "|cff00FF00";
	TRADECOOLDOWNFU_NOTREADY_COLOR = "|cffFF0000";
	TRADECOOLDOWNFU_ALMOSTREADY_COLOR = "|cffF0F000";
	TRADECOOLDOWNFU_CONFIRM = "Вы уверены, что хотите стереть все данные TradeCooldown?";
	TRADECOOLDOWNFU_FORMAT = "%d/%d";
	TRADECOOLDOWNFU_READY = "Готов!";
	TRADECOOLDOWNFU_MOONCLOTH = "Луноткань";
	TRADECOOLDOWNFU_SALTSHAKER = "Солонка";
	TRADECOOLDOWNFU_REFINEDSALT = "Очищенная глубокоскальная соль";
	TRADECOOLDOWNFU_SNOWMASTER = "Создатель снега 9000";
	TRADECOOLDOWNFU_SNOWBALL = "Снежок";
	TRADECOOLDOWNFU_ELUNESLANTERN = "Лампада Элуны";
	TRADECOOLDOWNFU_ELUNESTONE = "Камень Элуны";
	TRADECOOLDOWNFU_TRANSMUTE_MATCH = "Трансмутация";
	TRADECOOLDOWNFU_TRANSMUTES = "Трансмутации";
	TRADECOOLDOWNFU_NODATA = "Нет данных";
	TRADECOOLDOWNFU_CREATESEARCH = "Вы получаете предмет(.*).";
	TRADECOOLDOWNFU_BUTTON_LABEL = "Перезарядка : ";
	TRADECOOLDOWNFU_FORMATFULL="%dд %dч %dм %dс";
	
else
	TRADECOOLDOWNFU_READYNOTIFY0 = "|cff00FF00TradeCooldown:|r %s for %s:%s is ready.";
	TRADECOOLDOWNFU_READYNOTIFY1 = "|cff00FF00TradeCooldown:|r %s for %s:%s will be ready in %ss.";
	TRADECOOLDOWNFU_READY_COLOR = "|cff00FF00";
	TRADECOOLDOWNFU_NOTREADY_COLOR = "|cffFF0000";
	TRADECOOLDOWNFU_ALMOSTREADY_COLOR = "|cffF0F000";
	TRADECOOLDOWNFU_CONFIRM = "Are you sure you want to clear all data for Titan TradeCooldown?";
	TRADECOOLDOWNFU_FORMAT = "%d/%d";
	TRADECOOLDOWNFU_READY = "Ready!";
	TRADECOOLDOWNFU_MOONCLOTH = "Mooncloth";
	TRADECOOLDOWNFU_SALTSHAKER = "Salt Shaker";
	TRADECOOLDOWNFU_REFINEDSALT = "Refined Deeprock Salt";
	TRADECOOLDOWNFU_SNOWMASTER = "SnowMaster 9000";
	TRADECOOLDOWNFU_SNOWBALL = "Snowball";
	TRADECOOLDOWNFU_ELUNESLANTERN = "Elune's Lantern";
	TRADECOOLDOWNFU_ELUNESTONE = "Elune Stone";
	TRADECOOLDOWNFU_TRANSMUTE_MATCH = "Transmute";
	TRADECOOLDOWNFU_TRANSMUTES = "Transmutes";
	TRADECOOLDOWNFU_NODATA = "No Data";
	TRADECOOLDOWNFU_CREATESEARCH = "You receive item(.*).";
	TRADECOOLDOWNFU_BUTTON_LABEL = "Cooldown : ";
	TRADECOOLDOWNFU_FORMATFULL="%dd %dh %dm %ds";
end																									-- techys (until)

local L = AceLibrary("AceLocale-2.0"):new("TradeCooldownFu")

L:RegisterTranslations("enUS", function() return {
	NAME = "FuBar - TradeCooldownFu",
	DESCRIPTION = "Keeps track of Trade Cooldowns.",
	
	HIDE_LABEL = "Hide label";
	NOTIFY_LABEL = "Notify";
	CLEAR_LABEL = "Clear Data";	
	
	MENU_SHOW_TEXT1 = "Manual Cooldown";
	MENU_SHOW_TEXT_MANUALDEEPROCK = "Start Deeprock Salt";
	MENU_SHOW_TEXT_MANUALSNOWBALL = "Start Showball";
	
} end )

L:RegisterTranslations("ruRU", function() return {
	NAME = "FuBar - TradeCooldownFu",
	DESCRIPTION = "Слежение за перезарядкой изготовлений в профессиях.",
	
	HIDE_LABEL = "Спрятать название";
	NOTIFY_LABEL = "Уведомлять";
	CLEAR_LABEL = "Очистить данные";	
	
	MENU_SHOW_TEXT1 = "Ручная перезарядка";
	MENU_SHOW_TEXT_MANUALDEEPROCK = "Начать Глубокоскальная соль";
	MENU_SHOW_TEXT_MANUALSNOWBALL = "Начать Снежок";
	
} end )

L:RegisterTranslations("koKR", function() return {
	NAME = "FuBar - TradeCooldownFu",
	DESCRIPTION = "전문기술 쿨다운을 표시합니다.",
	
	HIDE_LABEL = "이름 숨기기";
	NOTIFY_LABEL = "이름 표시";
	CLEAR_LABEL = "자료 초기화";
	
	MENU_SHOW_TEXT1 = "쿨다운 수동작동";
	MENU_SHOW_TEXT_MANUALDEEPROCK = "소금정제기 시작";
	MENU_SHOW_TEXT_MANUALSNOWBALL = "눈뭉치 시작";
	
--	TRADECOOLDOWNFU_READYNOTIFY0 = "|cff00FF00TradeCooldown:|r %s for %s:%s 준비.";
--	TRADECOOLDOWNFU_READYNOTIFY1 = "|cff00FF00TradeCooldown:|r %s for %s:%s 는 %ss 준비됩니다.";
--	TRADECOOLDOWNFU_READY_COLOR = "|cff00FF00";
--	TRADECOOLDOWNFU_NOTREADY_COLOR = "|cffFF0000";
--	TRADECOOLDOWNFU_ALMOSTREADY_COLOR = "|cffF0F000";
--	TRADECOOLDOWNFU_CONFIRM = "모든 전문기술 쿨다운 자료를 삭제하시겠습니까?";
--	TRADECOOLDOWNFU_FORMAT = "%d/%d";
--	TRADECOOLDOWNFU_READY = "준비!";
--	TRADECOOLDOWNFU_MOONCLOTH = "달빛 옷감";
--	TRADECOOLDOWNFU_SALTSHAKER = "소금 정제기";
--	TRADECOOLDOWNFU_REFINEDSALT = "정제된 깊은바다 소금";
--	TRADECOOLDOWNFU_SNOWMASTER = "눈뭉치제조기 9000";
--	TRADECOOLDOWNFU_SNOWBALL = "눈뭉치";
--	TRADECOOLDOWNFU_ELUNESLANTERN = "엘룬의 등불";
--	TRADECOOLDOWNFU_ELUNESTONE = "엘룬의 돌";
--	TRADECOOLDOWNFU_TRANSMUTE_MATCH = "변환식";
--	TRADECOOLDOWNFU_TRANSMUTES = "변환";
--	TRADECOOLDOWNFU_NODATA = "자료 없음";
--	TRADECOOLDOWNFU_CREATESEARCH = "아이템을 획득했습니다: (.*).";
--	TRADECOOLDOWNFU_BUTTON_LABEL = "쿨다운 : ";

} end )