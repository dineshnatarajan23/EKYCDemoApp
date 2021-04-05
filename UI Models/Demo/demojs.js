var myViewer = {
    init: function(){
        var chkAngularLoad;

        chkAngularLoad = setInterval(function(){
            try{
                if(window.ng){ //wait for Angular to be iniialized
                    const viewer = new Viewer(document.getElementById('myimage'), {
                  viewed() {
                    viewer.zoomTo(1);
                  },
        });
                    clearInterval(chkAngularLoad);
                }
            }catch(e){
                console.log(e);
                clearInterval(chkAngularLoad);
            }
        }, 1000);

    }
}
