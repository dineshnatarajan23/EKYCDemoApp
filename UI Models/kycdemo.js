var myViewer = {
    init: function(){
       var chkImgElem;

        chkImgElem = setInterval(function(){
            try{
            
                var applimgElem = document.getElementById('applimg');
                var identityimgElem = document.getElementById('identityimg');
                var addressimgElem = document.getElementById('addressimg');
                
                if((applimgElem && identityimgElem)  || addressimgElem){ //wait for Image Control to be initialized inside tab
                    
                    if (applimgElem != null){
                        const viewer1 = new Viewer(applimgElem, {
                            viewed() {
                                viewer1.zoomTo(1);
                            },
                        });
                    }
                    
            
                     if (identityimgElem != null){
                        const viewer2 = new Viewer(identityimgElem, {
                            viewed() {
                                viewer2.zoomTo(1);
                            },
                        });
                    }
                    
                    
                    if (addressimgElem != null){
                        const viewer3 = new Viewer(addressimgElem, {
                            viewed() {
                                viewer3.zoomTo(1);
                            },
                        });
                    }
                    clearInterval(chkImgElem);
                }
            }catch(e){
                console.log(e);
                clearInterval(chkImgElem);
            }
        }, 1000);

    }
}
