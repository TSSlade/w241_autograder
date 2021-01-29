for student_repo in ./*/
do
    echo "Working on: $student_repo" # Whose problem set are we grading?
    cd $student_repo                 # Change into their repository

    # copy testing suite to directory
    cp ../test_ps2_answers.R ./test_ps2_answers.R

    # copy solutions into directory called answers
    cp ../questions/. ./answers/

    # Run the test  files
    Rscript -e "knitr::purl('./ps2_answers.Rmd')"
    Rscript -e "testthat::test_file('test_ps2_answers.R')" >> test_results.md

    cat test_results.md

    # Do the git work wc
    git add ./answers/ && git commit -m 'adds solutions'
    git add ./test_ps2_answers.R && git commit -m 'adds testing suite'
    git add test_results.md && git commit -m 'instructor conducted test results for $student_repo'
    git push origin master

    cd .. # Change back into the top level directory; then loop through the next
done