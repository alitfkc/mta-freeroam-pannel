local shader = dxCreateShader("ayarlar/nisangahlar/shader.fx")

function Nisangah1Aktif()
    engineApplyShaderToWorldTexture(shader, "siteM16")
    dxSetShaderValue(shader, "gTexture", dxCreateTexture("ayarlar/nisangahlar/nisangah1.png"))
    exports.Duyuru:sendClientMessage("#1e90ffAyar Sistemi : #ffffffNişangah değiştirildi.", 255,0,0)
end

function Nisangah2Aktif()
    engineApplyShaderToWorldTexture(shader, "siteM16")
    dxSetShaderValue(shader, "gTexture", dxCreateTexture("ayarlar/nisangahlar/nisangah2.png"))
    exports.Duyuru:sendClientMessage("#1e90ffAyar Sistemi : #ffffffNişangah değiştirildi.", 255,0,0)
end

function Nisangah3Aktif()
    engineApplyShaderToWorldTexture(shader, "siteM16")
    dxSetShaderValue(shader, "gTexture", dxCreateTexture("ayarlar/nisangahlar/nisangah3.png"))
    exports.Duyuru:sendClientMessage("#1e90ffAyar Sistemi : #ffffffNişangah değiştirildi.", 255,0,0) 
end

function Nisangah4Aktif()
    engineApplyShaderToWorldTexture(shader, "siteM16")
    dxSetShaderValue(shader, "gTexture", dxCreateTexture("ayarlar/nisangahlar/nisangah4.png"))
    exports.Duyuru:sendClientMessage("#1e90ffAyar Sistemi : #ffffffNişangah değiştirildi.", 255,0,0) 
end

function Nisangah5Aktif()
    engineApplyShaderToWorldTexture(shader, "siteM16")
    dxSetShaderValue(shader, "gTexture", dxCreateTexture("ayarlar/nisangahlar/nisangah5.png"))
    exports.Duyuru:sendClientMessage("#1e90ffAyar Sistemi : #ffffffNişangah değiştirildi.", 255,0,0) 
end

function Nisangah6Aktif()
    engineApplyShaderToWorldTexture(shader, "siteM16")
    dxSetShaderValue(shader, "gTexture", dxCreateTexture("ayarlar/nisangahlar/nisangah6.png"))
    exports.Duyuru:sendClientMessage("#1e90ffAyar Sistemi : #ffffffNişangah değiştirildi.", 255,0,0)
end

function NisangahPasif()
    engineRemoveShaderFromWorldTexture(shader,"siteM16")
    exports.Duyuru:sendClientMessage("#1e90ffAyar Sistemi : #ffffffNişangah sıfırlandı.", 255,0,0)
end