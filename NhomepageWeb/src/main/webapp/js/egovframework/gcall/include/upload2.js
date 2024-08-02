/* Licence:
*   Use this however/wherever you like, just don't blame me if it breaks anything.
*
* Credit:
*   If you're nice, you'll leave this bit:
*
*   Class by Pierre-Alexandre Losson -- http://www.telio.be/blog
*   email : plosson@users.sourceforge.net
*/
function refreshProgress()
{
    //UploadMonitor.getUploadInfo(updateProgress);
}

function updateProgress(uploadInfo){

    if(uploadInfo.inProgress){
        var fileIndex = uploadInfo.fileIndex;
        var progressPercent=0;
        progressPercent = Math.ceil((uploadInfo.bytesRead/uploadInfo.totalSize)*100);
        document.getElementById('progressBarText2').innerHTML = progressPercent+'%';
        document.getElementById('progressBarBoxContent2').style.width=parseInt(Math.floor(240*(progressPercent/100))) + 'px';
        window.setTimeout('refreshProgress()', 1.5*1000);
    }
    else{
    	return false;
    }
    return true;

}

function startProgress()
{
    //document.getElementById('progressBar').style.display = 'block';
    document.getElementById('progressBarBoxContent2').style.width=0+'px';
    document.getElementById('progressBarText2').innerHTML 		='0%'  ;
   	//document.getElementById('uploadbutton').disabled = true;
    //wait a little while to make sure the upload has started ..
    window.setTimeout("refreshProgress()", 1.5*1000);
    return true;
}
