--[[FPS Booster script, customized by Darkn#3538 | I took parts of another FPS Booster and I put it in this one, so it is even more fps. ]]

local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local destroymeshes = true -- This will destroy all meshparts, not meshes.
local removematerial = true -- Everytime this is true, it will overright the old material.

local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i,v in pairs(g:GetDescendants()) do
   if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
       v.Material = "Plastic"
v.Reflectance = 0
elseif v:IsA("Decal") and decalsyeeted then
v.Transparency = 1
elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
v.Lifetime = NumberRange.new(0)
elseif v:IsA("Explosion") then
v.BlastPressure = 1
v.BlastRadius = 1
v.Visible = false
   end
end
for i,e in pairs(l:GetChildren()) do
if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
e.Enabled = false
end
end
