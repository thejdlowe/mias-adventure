/// @description Insert description here
// You can write your code in this editor
var farCloudRate = 0.09;
var nearCloudRate = 0.8;
farCloudMoveMe += farCloudRate;
layer_x(farCloudLayer, x - farCloudMoveMe);

nearCloudMoveMe += nearCloudRate;
layer_x(nearCloudLayer, x - nearCloudMoveMe);