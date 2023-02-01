----------------------------
-- SOHBET KAPATMA
function ChatAcKapat()
    if guiCheckBoxGetSelected(getControl(wndAyarlar, 'ackapa7')) then
	    showChat(false)
	else
	    showChat(true)	
	end	
end
----------------------------

----------------------------
-- ÖLME MESAJI KAPATMA
function killMesaj()
	if guiCheckBoxGetSelected(getControl(wndAyarlar, 'ackapa8')) then
		setElementData(localPlayer, "kill:mesaj", true)
	else
		setElementData(localPlayer, "kill:mesaj", false)
	end
end
----------------------------
----------------------------
--ARAÇ AİR
function airpanels()
	triggerEvent("f1:airpanel",root)
end
----------------------------
----------------------------
--HAVA DURUMU
function havadurum()
	triggerEvent("f1:havadurumu",root)
end
----------------------------

----------------------------
-- İNT DEĞİŞİRSE PANELLERİ KAPATMA
addEventHandler ("onClientElementInteriorChange", localPlayer, function (oldInterior, newInterior)
    if newInterior > 0 then 
		if isWindowOpen(wndMain) then
			showCursor(false)
			hideAllWindows()
		   triggerEvent("gorev:panelkapat",localPlayer)
		   triggerEvent("ayarlarpanelac",localPlayer)
		   triggerEvent("f1:havadurumukapa",localPlayer)
		   triggerEvent("f1:airpanelkapa",localPlayer)
		   triggerEvent("isinlanmapaneli:panelkapat",localPlayer)
			colorPicker.closeSelect()
		end
	end
end)

-- İNT DEĞİŞİRSE PANELLERİ KAPATMA
addEventHandler ("onClientElementDimensionChange", localPlayer, function (oldInterior, newInterior)
    if newInterior > 0 then 
		if isWindowOpen(wndMain) then
			showCursor(false)
			hideAllWindows()
		   triggerEvent("gorev:panelkapat",localPlayer)
		   triggerEvent("ayarlarpanelac",localPlayer)
		   triggerEvent("f1:havadurumukapa",localPlayer)
		   triggerEvent("f1:airpanelkapa",localPlayer)
		   triggerEvent("isinlanmapaneli:panelkapat",localPlayer)
			colorPicker.closeSelect()
		end
	end
end)
-----------------------------

-----------------------------
--OYUNLAR SİSTEMİ
--Squid game event
function sq_event_data_degisme(theKey, oldValue, newValue)
    if (getElementType(source) == "player") and (theKey == "f1:sq:event:oyuncu:sayisi") then
        setControlText(wndOyunlar, "sq_event_oyuncu_sayisi","Oyuncu sayisi "..newValue.."/40")
    end
end
addEventHandler("onClientElementDataChange",root,sq_event_data_degisme)

function oyunlarpaneliacma()
    if isWindowOpen(wndOyunlar) then 
        closeWindow(wndOyunlar)
    else
        local sq_event_oyuncu_sayisi_deger=getElementData(localPlayer,"f1:sq:event:oyuncu:sayisi")
		if sq_event_oyuncu_sayisi_deger then 
		else
			sq_event_oyuncu_sayisi_deger = 0 
		end
        setControlText(wndOyunlar, "sq_event_oyuncu_sayisi","Oyuncu sayisi "..sq_event_oyuncu_sayisi_deger.."/40")
        createWindow(wndOyunlar)
    end
end
function sq_evente_katil()
    triggerEvent("sq:katil",localPlayer)
end
function sp_event()
	triggerEvent("superman_event_katil",localPlayer)
	hideAllWindows()
	showCursor(false)
end
-----------------------------
-----------------------------
--MEKANLAR
function mekanlarpaneli()
	triggerEvent("gorev:panel",localPlayer)
end
-----------------------------

-----------------------------
--GÖREVLER
function yeniisinlanma()
	triggerEvent("isinlanmapaneli",localPlayer)
end
----------------------------


---------------------------
--YAPIŞMA AÇ/KAPA
function yapisma_ackapa()
	setElementData(localPlayer,"x_yapisma_meta",guiCheckBoxGetSelected(getControl(wndMain, 'yapisma')))
end
----------------------------

----------------------------
--Eventte mi kontrol
function isPlayerInEvent()
	return getElementData(localPlayer,"Durum") == "Eventde"
end
---------------------------



---------------------------
--ARAÇ KONTROL
function enableVehicleControl()
	if isPedInVehicle(localPlayer) then 
		triggerEvent("arac_kontrol_ac",localPlayer)
	else
		exports.Duyuru:sendClientMessage("#1e90ffUYARI! : #ff0000Önce araca binin.", 255,0,0)
	end
end
---------------------------

-----------------
--HDR
----------------
function hdr_ackapa()
	triggerEvent( "switchContrast", resourceRoot, not bEffectEnabled )
end


