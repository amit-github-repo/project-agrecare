
function generatePDF(){
    const elementPDF = document.getElementById('page-top');
    var opt = {
        margin:       1,
        filename:     'plant-description.pdf',
        image:        { type: 'jpeg', quality: 0.98 },
        html2canvas:  { scale: 2 },
        jsPDF:        { orientation: 'p',
                        unit: 'mm',
                        format: 'a4',
                        putOnlyUsedFonts:true,
                        floatPrecision: 16 }
      
    html2pdf().from(elementPDF).set(opt).save();    
}