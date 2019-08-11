<?php
require "class.crud.inc.php";
class forms extends dbcrud
{
	/*
	function transact($sql,$data=array()){
		include('koneksi.inc.php');
		$tqry=$conn->prepare($sql);
		$tqry->execute($data);
		return($tqry);
	}
	*/

	function getForm($formGroup,$modus='i',$elValue=array(),$inline=0){
		$sql="SELECT * FROM formIface WHERE fgroup= ? ";
		$qry=$this->transact($sql,array($formGroup));
		while($r = $qry->fetch()){
			if($inline == 0){
				echo "
				<div class='form-group'>
					<label>".$r['pertanyaan']."</label>";
					if($modus=='i'){
						//setElement($formType,$formName,$formId,$formValue='',$fparam='')
						$this->setElement($r['formType'],$r['formName'],$r['formId'],'',$r['fparam']);
					}else{
						$fname = $r['formName'];
						$this->setElement($r['formType'],$r['formName'],$r['formId'],$elValue[$fname],$r['fparam']);
					}
				echo "
				</div>
				";
			}else{
				echo "
				<div class='form-group'>
					<label class='col-sm-3'>".$r['pertanyaan']."</label>
					<div class='col-sm-9'>";
					if($modus=='i'){
						//setElement($formType,$formName,$formId,$formValue='',$fparam='')
						$this->setElement($r['formType'],$r['formName'],$r['formId'],'',$r['fparam']);
					}else{
						$fname = $r['formName'];
						$this->setElement($r['formType'],$r['formName'],$r['formId'],$elValue[$fname],$r['fparam']);
					}
				echo "
					</div>
				</div>
				";
			}
		}
		if($modus == 'i'){
			$submitValue ='Simpan'; }else{  $submitValue ='Update'; }
		echo "
		<div style='float:right; margin-right: 10px; padding: 5px;' id='control-btn'>
			<input type='reset'  class='btn btn-warning' value='Reset' id='reset' />
			<input type='submit' class='btn btn-primary' value='".$submitValue."' id='submit' id='submit'/>
		</div>
		";
	}

	function setElement($formType,$formName,$formId,$formValue='',$fparam=''){
		if($formType == "text"){
			echo "<input type='text' class='form-control' name='".$formName."'
				   id='".$formId."' value='".$formValue."' $fparam />";
		}

		if($formType == "number"){
			echo "<input type='number' class='form-control' name='".$formName."'
				   id='".$formId."' value='".$formValue."' $fparam />";
		}

		if($formType == "textarea"){
			echo "
			<textarea class='form-control' name='".$formName."'
			id='".$formId."' rows='5'>".$formValue."</textarea>
			";
		}

		if($formType == "password"){
			echo "<input type='password' class='form-control' name='".$formName."'
				   id='".$formId."' $fparam/>";
		}
		if($formType == "select"){
			list($optVal,$optLbl,$tblSrc) = explode("/",$fparam);

			if($tblSrc == 'formOpsi'){

				$sql = "SELECT $optVal AS optValue ,$optLbl AS optLabel
						FROM form_opsi WHERE optGroup= '".$formName."'
						ORDER BY $optLbl";

			}else{
				$sql = "SELECT $optVal AS optValue ,$optLbl AS optLabel
						FROM  $tblSrc ORDER BY $optLbl";
			}

			echo "
			<select class='form-control' name='".$formName."' id='".$formId."'>
				<option value=''>Pilih Salah Satu</option>";

			$qry = $this->transact($sql);
			while($sl = $qry->fetch()){

				if($formValue != '' && $sl['optValue'] == $formValue )
				{ $isSelected ='selected'; }
				else
				{ $isSelected =''; }

				echo "<option value='".$sl['optValue']."' $isSelected>".$sl['optLabel']."</option>";
			}

			echo "
			</select>
			";
		}
		if($formType == "date"){
			if($formValue == ''){
				$formValue=date('Y-m-d');
			}
			echo "
			<input class = 'form-control' type='date' name='".$formName."' id='".$formId."' value='".$formValue."' />
			";
		}

		if($formType == "file"){
			echo "
			<input type='file' name='".$formName."' id='".$formId."' $fparam />
			";
		}
		if($formType == "blank"){
			echo "<span id='".$formId."'>x</span>";
		}
	}
}
?>
