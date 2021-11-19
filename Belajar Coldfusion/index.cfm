<!---<cfparam name="varNama" default="">
<cfparam name="varTanggal" default="">
<cfparam name="varAlamat" default="">
<cfparam name="varGender" default="">
<cfparam name="varUmur" default="">
<cfparam name="varTglNow" default="">
<cfparam name="varKet" default="">

<form action="" method="post">
    Nama : <input type='text' name="f_nama" value=""><br>
    Tanggal Lahir : <input type='date' name="f_tanggal" value=""><br>
    Jenis Kelamin : <br>
    <label for="pria"> Laki-Laki
    <input type='radio' name="f_gender" value="Laki-laki"></label>
    <label for="wanita"> Perempuan 
    <input type='radio' name="f_gender" value="Perempuan"></label><br>
    Alamat :<br><textarea name="f_alamat" value=""></textarea><br>
    <input type='submit' value="Simpan" name="btnSimpan">
</form>

<cfif isDefined("btnSimpan")>
    <cfset varNama = form.f_nama>
    <cfset varTanggal = form.f_tanggal>
    <cfset varAlamat = form.f_alamat>
    <cfset varGender = form.f_gender>
    <cfset varTglNow = now()>
    <cfset varUmur = Int(((varTglNow - varTanggal)/365))>

    <cfif varGender EQ "Perempuan"> 
        <cfif varUmur GTE 60>
            <cfset varKet = "Nenek">
        <cfelseif varUmur GTE 40>
            <cfset varKet = "Wanita">
        <cfelseif varUmur GTE 20>
            <cfset varKet = "Perempuan">
        <cfelseif varUmur LT 20>
            <cfset varKet = "Gadis">
        </cfif>
    <cfelseif varGender EQ "Laki-laki">
        <cfset varKet = "Laki-laki">
    <cfelse>
        <cfset varKet = "Tidak Terdefinisi">
    </cfif>

    <cfoutput>
        Nama          : #varNama# <br>
        Tanggal Lahir : #varTanggal# <br>
        Alamat        : #varAlamat# <br>
        Umur          : #varUmur# Tahun<br>
        Keterangan    : #varKet# <br>
    </cfoutput>

</cfif>
--->

<cfmail to="#emailaddress#"
from="vareza998@gmail.com"
subject="Test email coldfusion"
type="text">
Halo gan test
</cfmail>
<cfoutput>
    <p> berhasil kah ?</p>
</cfoutput>