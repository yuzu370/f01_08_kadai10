<?php
//入力チェック(受信確認処理追加)
if(
  !isset($_POST['name']) || $_POST['name']=='' ||
  !isset($_POST['author']) || $_POST['author']=='' ||
  !isset($_POST['detail']) || $_POST['detail']=='' ||
  !isset($_POST['indate']) || $_POST['indate']==''
){
  exit('ParamError');
}

//1. POSTデータ取得
$id     = $_POST['id'];
$name   = $_POST['name'];
$author  = $_POST['author'];
$detail = $_POST['detail'];
$indate = $_POST['detail'];

//2. DB接続します(エラー処理追加)
include('functions.php');
$pdo = db_conn();


//3．データ登録SQL作成
$stmt = $pdo->prepare('UPDATE '. $table .' SET name=:a1, author=:a2, detail=:a3 WHERE id=:id');
$stmt->bindValue(':a1', $name, PDO::PARAM_STR);
$stmt->bindValue(':a2', $author, PDO::PARAM_STR);
$stmt->bindValue(':a3', $detail, PDO::PARAM_STR);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

//4．データ登録処理後
if($status==false){
  errorMsg($stmt);
}else{
  header('Location: select.php');
  exit;
}
?>
