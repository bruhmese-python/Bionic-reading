output_file ?= styles.css

clear:
	echo > $(output_file)

css:
	for file in *.pss; do \
    	    cat $$file | pss >> $(output_file); \
    	done

