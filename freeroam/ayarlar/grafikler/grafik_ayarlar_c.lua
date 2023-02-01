-----------------------------
--HD DENİZ AÇMA KAPAMA
-----------------------------
local myShaderdeniz, tecdeniz = dxCreateShader ( "ayarlar/grafikler/hddeniz/water.fx" )
local waterdurum = false
function hddenizackapa()
    if waterdurum == false then
        local textureVol = dxCreateTexture ( "ayarlar/grafikler/hddeniz/images/smallnoise3d.dds" );
        local textureCube = dxCreateTexture ( "ayarlar/grafikler/hddeniz/images/cube_env256.dds" );
        dxSetShaderValue ( myShaderdeniz, "sRandomTexture", textureVol );
        dxSetShaderValue ( myShaderdeniz, "sReflectionTexture", textureCube );
        engineApplyShaderToWorldTexture ( myShaderdeniz, "waterclear256" )
        timer = setTimer(function()
            if myShader then
                local r,g,b,a = getWaterColor()
                dxSetShaderValue ( myShaderdeniz, "sWaterColor", r/255, g/255, b/255, a/255 );
            end
        end,100,0 )	
        waterdurum = true
    elseif waterdurum == true then
        engineRemoveShaderFromWorldTexture(myShaderdeniz,"waterclear256")
        killTimer(timer)
        waterdurum = false
    end
end
----------------------
--BLOOM
----------------------
bloomdurum = false
function bloomackapa()
    if bloomdurum == false then
        addEventHandler( "onClientHUDRender", root,bloomm)
	    bloomdurum = true
    elseif bloomdurum == true then
        removeEventHandler( "onClientHUDRender", root,bloomm)
        bloomdurum = false
    end
end
----------------------
--ARAÇ BOYASI
----------------------
local arababoyadurum=false 
function arababoyaackapa()
    if arababoyadurum then
        triggerEvent( "shader", resourceRoot, false )
        arababoyadurum=false
    else
        triggerEvent( "shader", resourceRoot, true )
        arababoyadurum=true
    end
end
--------------------------------
-- DETAYLAR 
--------------------------------
detaildurum = false
function detaylarackapa()
    if detaildurum == false then
        triggerEvent( "onClientSwitchDetail", resourceRoot, true )
        detaildurum = true
    elseif detaildurum == true then
        triggerEvent( "onClientSwitchDetail", resourceRoot, false )
        detaildurum = false
    end
end
--------------------------------
--GÖKYÜZÜ
--------------------------------
local skydurum = false
function gokyuzuackapa()
    if skydurum == false then
        triggerEvent( "switchSkyAlt", resourceRoot, true )
        skydurum = true
    elseif skydurum == true then
        triggerEvent( "switchSkyAlt", resourceRoot, false )
        skydurum = false
    end
end
-----------------
--HDR
----------------
function hdr_ackapa()
	triggerEvent( "switchContrast", resourceRoot, not bEffectEnabled )
end

