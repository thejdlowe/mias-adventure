/// @description Insert description here
// You can write your code in this editor
var farCloudRate = 0.09;
var nearCloudRate = 0.8;
var waterRate = abs(oGameManager.currSpeed);
farCloudMoveMe += farCloudRate;
layer_x(farCloudLayer, x - farCloudMoveMe);

nearCloudMoveMe += nearCloudRate;
layer_x(nearCloudLayer, x - nearCloudMoveMe);

waterMoveMe += waterRate;
layer_x(waterLayer, x - waterMoveMe);