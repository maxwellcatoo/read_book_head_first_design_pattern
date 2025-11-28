

class UploadTask {
  DealAssetTask? dealAssetTask;
  TransportTask? transportTask;
}

// 处理任务(可自行完成处理任务，只接受必要参数及返回结果)
abstract class DealAssetTask {

}

// 传输任务（自行完成传输任务，只接收必要参数及返回结果）
abstract class TransportTask {

}

// 资源类（需要提供后续处理资源文件时所需的各种属性）
class ZpjOriginAsset {

}

// 处理后的资源类
class DealtAsset {

}


// 资源标记类
class MarkedAsset {
  ZpjOriginAsset zpjAsset;
  UploadStatus uploadStatus = UploadStatus.wait;
  DealStatus dealStatus = DealStatus.wait;
  Map<String, DealtAsset> dealtMap = {};

  MarkedAsset({required this.zpjAsset});

}

enum DealStatus {
  wait, // 等待处理
  dealingAsset, // 处理资源中
  assetError, // 资源处理异常
  dealTimeout, // 资源处理超时（按异常处理）
  assetDealt, // 处理完成
}

enum UploadStatus {
  wait, // 等待上传
  uploading, // 上传中
  uploadFail, // 上传失败
  uploadSuccess, // 上传成功
}