var words_to_process_n = 0, index_to_process = 0;
let typing_text = "Discombobulate";
let words_list;
let prevWordDiv = null;
var selected_index = 0;

function reset_bold_formatting() {
	for (let index = 0; index < statarea.children.length; index++) {
		statarea.children[index].classList.remove('bold_text');
	}
}
function updateTypeArea(){
	console.log("typing_text",typing_text);
	typearea.innerHTML="";
	statarea.innerHTML="";

        for (let i = 0; i < typing_text.length; i++) {
                var spanElement = document.createElement('span');
                spanElement.textContent = typing_text[i];
                typearea.appendChild(spanElement);

                var spanElement1 = document.createElement('span');
                spanElement1.textContent = typing_text[i];
		statarea.appendChild(spanElement1);

		spanElement.addEventListener('mouseover', function() {
			selected_index = i;
			for (let index = 0; index <= i; index++) {
				statarea.children[index].classList.add('bold_text');
			}
		});
		spanElement.addEventListener('mouseout', function(event) { reset_bold_formatting(); });


	       spanElement.addEventListener('click', function() {
		    const wordsPreviewDiv = document.querySelector('.words_preview');
		    const boldPreviewDiv = document.querySelector('.bold_preview');
		    
		    const newDiv1 = document.createElement('div');
		    newDiv1.textContent = typing_text;
		    //exportables
		    newDiv1.setAttribute('selected-index', selected_index);
		    newDiv1.setAttribute('selected-character', typing_text[selected_index]);
		    wordsPreviewDiv.appendChild(newDiv1);

		    const newDiv2 = document.createElement('div');
		    newDiv2.innerHTML = `<b>${typing_text.slice(0, selected_index+1)}</b>${typing_text.slice(selected_index+1,typing_text.length)}`;
		    boldPreviewDiv.appendChild(newDiv2);

		    selectNextWord();
		});
        }
}

function selectNextWord(){
	console.log("selectNextWord");
	if(index_to_process<words_to_process_n){
		if(prevWordDiv!=null)
			prevWordDiv.classList.remove('selected');

		var wordDiv=words_list.children[index_to_process++];
		wordDiv.classList.add('selected');

		prevWordDiv = wordDiv;
		typing_text = wordDiv.innerHTML;
		updateTypeArea();
	    }
}

document.addEventListener('DOMContentLoaded', function() {
	//initialization
	var workarea = document.getElementsByClassName('work_area')[0];
	//rightclick
	//workarea.addEventListener('contextmenu', );
        typearea = document.getElementsByClassName('click_area')[0];
	typearea.textContent='';
        statarea = document.getElementsByClassName('display_area')[0];
	statarea.textContent='';
	
	updateTypeArea();

	words_list = document.querySelector('.words_list');

	//file reader
	document.getElementById('fileInput').addEventListener('change', function(event) {
	    var file = event.target.files[0];
	    var reader = new FileReader();

	    reader.onload = function(event) {
		var fileContent = event.target.result;
		var lines = fileContent.split('\n'); // Split content by lines

		words_to_process_n = lines.length;
		index_to_process = 0

		// Clear previous content
		words_list.innerHTML = '';

		// Iterate over lines and append to div
		lines.forEach(function(line) {
		    var lineDiv = document.createElement('div');
		    lineDiv.textContent = line;
		    words_list.appendChild(lineDiv);
		});
		selectNextWord();
	    };
	    reader.readAsText(file);
	});

	//csv export
        document.getElementById('printButton').addEventListener('click', function() {
            const wordsPreviewDiv = document.querySelector('.words_preview');
            const children = wordsPreviewDiv.children;
            let csv = '';
            for (let i = 0; i < children.length; i++) {
                const textContent = children[i].textContent;
                const selectedIndex = children[i].getAttribute('selected-index');
                const selectedChar = children[i].getAttribute('selected-character');
                csv += `${textContent}, ${selectedIndex}, ${selectedChar}\n`;
            }

            const blob = new Blob([csv], { type: 'text/csv' });
            const url = URL.createObjectURL(blob);
            const link = document.createElement('a');
            link.href = url;
            link.download = 'data.csv';
            link.click();
            URL.revokeObjectURL(url);
        });
});

