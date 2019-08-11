<?php
define('rows',30);
class dbcrud
{
   function transact($sql,$data=array()){
	   include('koneksi.inc.php');
	   $tqry=$conn->prepare($sql);
	   $tqry->execute($data);
	   return($tqry);
   }

   function columnSet($sets){

	   $cols = explode(",",$sets);
	   $noc = count($cols);

	   $colset = '';
	   for($i = 0 ; $i < $noc ; $i ++){
		   if($i < ($noc -1)){
			   $colset.=$cols[$i]." = ?, ";
		   }else{
			   $colset.=$cols[$i]." = ?";
		   }
	   }

	   return($colset);
   }


   function insert($table,$sets,$data){
	   $cols = $this->columnSet($sets);
	   $sql = "INSERT INTO $table SET $cols";
	   $qry = $this->transact($sql,$data);
	   $qry = null;
   }

   function update($table,$sets,$data,$key){
	   $cols = $this->columnSet($sets);
	   $sql = "UPDATE $table SET $cols
			   WHERE $key = ?";
         //echo $sql; print_r($data);
	   $qry = $this->transact($sql,$data);
	   $qry = null;
   }

   function delete($table,$key,$data){
	   $sql = "DELETE FROM $table WHERE $key = ?";
	   $qry = $this->transact($sql,array($data));
	   $qry = null;
   }

   function select($cols,$table,$key,$start=0){
	   $sql = "SELECT $cols FROM $table
			   ORDER BY $key LIMIT $start,".rows;
	   $qry = $this->transact($sql);
	   $returnData = array();
	   while($rs = $qry->fetch()){
		   array_push($returnData,$rs);
	   }
	   return($returnData);
	   $qry = null;
   }

   function pickone($cols,$table,$key,$data){
	   $sql = "SELECT $cols FROM $table
			   WHERE $key = ? LIMIT 1";
	   $qry = $this->transact($sql,array($data));
	   // echo $sql;
	   $rs = $qry->fetch();
	   return($rs);
	   $qry = null;
   }

// memilih lebih dari satu
   function picksome($cols,$table,$keysets){
	   $sql = "SELECT $cols FROM $table
			   WHERE $keysets LIMIT ".rows;
     //echo $sql;
	   $qry = $this->transact($sql);
	   $data = array();
	   while($rs = $qry->fetch()){
		   array_push($data,$rs);
	   }
	   return($data);
	   $qry = null;
   }

// mengganti format tanggal
   function tanggalTerbaca($tgl)
   {
	   list($y,$m,$d)=explode('-',$tgl);
	   switch($m){
		   case '01': $b='Januari'; break;
		   case '02': $b='Februari'; break;
		   case '03': $b='Maret'; break;
		   case '04': $b='April'; break;
		   case '05': $b='Mei'; break;
		   case '06': $b='Juni'; break;
		   case '07': $b='Juli'; break;
		   case '08': $b='Agustus'; break;
		   case '09': $b='September'; break;
		   case '10': $b='Oktober'; break;
		   case '11': $b='Nopember'; break;
		   case '12': $b='Desember'; break;
	   }

	   return($d.' '. $b.' '.$y);
   }


   function pageNumber($table,$obj,$pg=1){
     //hitung jumlah baris
     $q1 = "SELECT COUNT(*) row FROM $table";
     $e1 = $this->transact($q1);
     $r1 = $e1->fetch();
     $rows = $r1['row'];
     //echo "Jumlah Data=".$rows;

     //hitung jumlah halaman;
     $nop = ceil($rows/rows);
     //echo "Jumlah Halaman: ".$nop;
     echo "<div class='form-group'>";
     echo "<label class='col-sm-6'>Halaman:</label>";
     echo "<div class='col-sm-6'>";
     echo "<select class='form-control' onChange=chref('".$obj."',this.value)>";
     for($i = 1 ; $i <= $nop ; $i++ ){
       if($i == $pg){
         echo "<option selected>".$i."</option>";
       }else{
         echo "<option>".$i."</option>";
       }
     }
     echo "</select>";
     echo "</div>";
     echo "</div>";
   }

   function passedVars($var){
           echo "<pre>";
           foreach($var as $q => $a){

                   echo "\$_POST['".$q."'],\n";

           }
           echo "</pre>";
   }

   function timestampConvert($datime){
     list($tgl,$jam) = explode(" ",$datime);
     list($th,$bl,$hr) = explode("-",$tgl);
     $newTimeStamp=$hr.'-'.$bl.'-'.$th.' '.$jam;
     return($newTimeStamp);
   }

   // fungsi bantu
   function setsAndData($post){
     $sets = ''; $data='';
     foreach($post as $k=>$v){
       $sets.="$k,";
       $data.="\$_POST['".$k."'],";
     }
     $sets = substr($sets,0,-1);
     $data = substr($data,0,-1);
     echo "<pre>";
     echo "\$sets = '$sets'; <br/>";
     echo "\$data = array($data); <br/>";
     print_r($post);
     echo "</pre>";
   }


}


?>
