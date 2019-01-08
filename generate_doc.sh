#!/usr/bin/env bash

# Author Juhan Aasaru

print_endpoint() {

    echo ".request"
    echo "include::{snippets}/$1/http-request.adoc[]"
    echo ""
    echo ".response"
    echo "include::{snippets}/$1/http-response.adoc[]"
    echo ""
    echo "'''"
    echo ""
}
generate_adoc () {
    outputFilename=$2
    outputFolder="src/main/asciidoc/"
    outputFullPath="$outputFolder$outputFilename.adoc"
    > "$outputFullPath"
    echo "= $outputFilename-cn documentation" >> "$outputFullPath"
    echo "" >> "$outputFullPath"


    for entry in "../fineract-cn-$2/component-test/build/doc/generated-snippets/$1"/*
    do
        folderName=${entry//\.\.\//}

        print_endpoint $folderName >> "$outputFullPath"
    done

    echo "<li><a href="$outputFilename.html">$outputFilename</a></li>" >> $indexFile
}

indexFile="src/main/resources/doc/html5/index.html"
echo "<h1>Fineract API documentation</h1>" > "$indexFile"

generate_adoc 'test-transaction-type' 'accounting'
generate_adoc 'test-identification-cards' 'customer'
generate_adoc 'test-deposit' 'deposit-account-management'
generate_adoc 'test-group' 'group'
generate_adoc 'test-identity' 'identity'
generate_adoc 'test-payroll' 'payroll'
generate_adoc 'test-teller' 'teller'

./gradlew asciidoctor


