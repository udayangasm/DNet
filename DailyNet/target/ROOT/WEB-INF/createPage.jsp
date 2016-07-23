<div   class="generic-container"  width: 1150px; height: 1000px; >

 			 <form method="post" action="createPage"   modelAttribute="uploadForm" enctype="multipart/form-data" id="createPage">
 
 		
        			Image 1 <input name="files[0]" type="file"  id="selectedFile" /> <br>
        			Image 2 <input name="files[1]" type="file"  id="selectedFile2" /><br>
        			Image 3 <input name="files[2]" type="file"  id="selectedFile3" /><br>
		            Discription <textarea rows="8" cols="60" id="description" name="description"  placeholder="Enter description here"></textarea>
                    <br><br><a ref="create_web_site" >Create Web Site</a>				
		            <input type="submit" value="Submit"   />
  		
  			</form>

</div>