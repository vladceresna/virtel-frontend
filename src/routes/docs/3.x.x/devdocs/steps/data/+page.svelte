<script>
	import CodeView from "$lib/components/code-view.svelte";
	import Ocode from "$lib/components/typography/ocode.svelte";
	import Oh1 from "$lib/components/typography/oh1.svelte";
import Oh2 from "$lib/components/typography/oh2.svelte";
	import Oh3 from "$lib/components/typography/oh3.svelte";
	import Oh4 from "$lib/components/typography/oh4.svelte";
	import Op from "$lib/components/typography/op.svelte";
	import Oul from "$lib/components/typography/oul.svelte";
	import { CardTitle } from "$lib/components/ui/card";
	import CardHeader from "$lib/components/ui/card/card-header.svelte";
	import Card from "$lib/components/ui/card/card.svelte";

</script>

<Oh1>Data</Oh1>

<Oh2>String Manipulation</Oh2>
<Op>Objective: Perform string operations such as concatenation and substring extraction.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Concatenate strings:
<CodeView>
str add "Hello" " " "World" greeting;
</CodeView>
<Oul>
<li>"Hello", " ", "World" are the strings to concatenate.</li>
<li>"greeting" is the new variable for the result.</li>
</Oul>
</li>
<li>Extract a substring:
<CodeView>
str cut "0" "5" greeting substring;
</CodeView>
<Oul>
<li>"0" is the starting index.</li>
<li>"5" is the ending index.</li>
<li>"greeting" is the source string.</li>
<li>"substring" is the new variable for the result.</li>
</Oul>
</li>
<li>Display the substring:
<CodeView>
csl write substring;
</CodeView>
</li>
</Oul>

<Oh2>Mathematical Operations</Oh2>
<Op>Objective: Perform basic arithmetic operations like addition and multiplication.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Add numbers:
<CodeView>
mat plus "1" "2" "3" sum;
</CodeView>
<Oul>
<li>"1", "2", "3" are the numbers to add.</li>
<li>"sum" is the new variable for the result.</li>
</Oul>
</li>
<li>Multiply numbers:
<CodeView>
mat mult "2" "3" "4" product;
</CodeView>
<Oul>
<li>"2", "3", "4" are the numbers to multiply.</li>
<li>"product" is the new variable for the result.</li>
</Oul>
</li>
<li>Display the results:
<CodeView>
csl write sum;
csl write product;
</CodeView>
</li>
</Oul>

<Oh2>Practical Example</Oh2>
<Op>Objective: Create a full name and calculate a total price.</Op>

<Oh3>Steps:</Oh3>
<Oul>
<li>Create a full name:
<CodeView>
str add "John" " " "Doe" fullName;
</CodeView>
</li>
<li>Extract the first name:
<CodeView>
str cut "0" "4" fullName firstName;
csl write firstName;
</CodeView>
</li>
<li>Calculate total price:
<CodeView>
mat mult "10" "2" total;
csl write total;
</CodeView>
</li>
</Oul>

<Oh2>Tips</Oh2>
<Oul>
<li>Ensure numbers are passed as strings in math operations.</li>
<li>Use <Ocode>str eqs</Ocode> for string comparisons.</li>
<li>Apply <Ocode>crt</Ocode> commands for secure data handling.</li>
</Oul>

<Oh2>Conclusion</Oh2>
<Op>Data manipulation commands in Virtel Steps, such as <Ocode>str add</Ocode>, <Ocode>mat plus</Ocode>, and <Ocode>bln and</Ocode>, provide essential tools for processing and transforming data.</Op>






<Oh2>Commands</Oh2>
<div class="h-5"></div>

<div class="flex flex-col gap-5 *:px-5 *:pb-5">


<Card>
<Oh3 class="notranslate">str cut</Oh3>
<Op>Extracts a substring from a string between specified positions and stores it in a new variable.</Op>
<CodeView>str cut (first) (last) (value) (newVarName)</CodeView>
<Oul>
    <li><Ocode>first</Ocode>: The starting index (inclusive) (type: VAR).</li>
    <li><Ocode>last</Ocode>: The ending index (exclusive) (type: VAR).</li>
    <li><Ocode>value</Ocode>: The string to extract from (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable for the substring (type: VAR).</li>
</Oul>
<CodeView>
str cut "0" "5" "Hello World" substring;
csl write substring;
</CodeView>
<Op>
    This example extracts "Hello" from "Hello World" and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">str add</Oh3>
<Op>Concatenates multiple strings into one and stores the result in a new variable.</Op>
<CodeView>str add (firstStr) (secondStr) ... (lastStr) (newVarName)</CodeView>
<Oul>
    <li><Ocode>firstStr, secondStr, ..., lastStr</Ocode>: The strings to concatenate (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable for the result (type: VAR).</li>
</Oul>
<CodeView>
str add "Hello" " " "World" greeting;
csl write greeting;
</CodeView>
<Op>
    This example concatenates "Hello", " ", and "World" into "Hello World" and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">str len</Oh3>
<Op>Gets the length of a string and stores it in a new variable.</Op>
<CodeView>str len (value) (newVarName)</CodeView>
<Oul>
    <li><Ocode>value</Ocode>: The string to measure (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable for the length (type: VAR).</li>
</Oul>
<CodeView>
str len "Hello" length;
csl write length;
</CodeView>
<Op>
    This example gets the length of "Hello" ("5") and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">str get</Oh3>
<Op>Gets a character at a specific index in a string and stores it in a new variable.</Op>
<CodeView>str get (index) (value) (newVarName)</CodeView>
<Oul>
    <li><Ocode>index</Ocode>: The index of the character (type: VAR).</li>
    <li><Ocode>value</Ocode>: The string to extract from (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable for the character (type: VAR).</li>
</Oul>
<CodeView>
str get "0" "Hello" firstChar;
csl write firstChar;
</CodeView>
<Op>
    This example gets "H" from "Hello" and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">str eqs</Oh3>
<Op>Checks if two strings are equal and stores the result ("true" or "false") in a new variable.</Op>
<CodeView>str eqs (first) (second) (newVarName)</CodeView>
<Oul>
    <li><Ocode>first</Ocode>: The first string to compare (type: VAR).</li>
    <li><Ocode>second</Ocode>: The second string to compare (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable for the result (type: VAR).</li>
</Oul>
<CodeView>
str eqs "Hello" "Hello" isEqual;
csl write isEqual;
</CodeView>
<Op>
    This example checks if "Hello" equals "Hello" and prints "true".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">str split</Oh3>
<Op>Splits a string by a regex pattern and stores the resulting parts in a new list.</Op>
<CodeView>str split (regex) (value) (newVarListName)</CodeView>
<Oul>
    <li><Ocode>regex</Ocode>: The regex pattern to split by (type: VAR).</li>
    <li><Ocode>value</Ocode>: The string to split (type: VAR).</li>
    <li><Ocode>newVarListName</Ocode>: The name of the new list for the parts (type: LIST).</li>
</Oul>
<CodeView>
str split "," "a,b,c" partsList;
lst get partsList "0" firstPart;
csl write firstPart;
</CodeView>
<Op>
    This example splits "a,b,c" by "," into a list and prints "a".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">mat plus</Oh3>
<Op>Adds multiple numbers and stores the sum in a new variable.</Op>
<CodeView>mat plus (a) (b) ... (lastNum) (newVarName)</CodeView>
<Oul>
    <li><Ocode>a, b, ..., lastNum</Ocode>: The numbers to add (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable for the sum (type: VAR).</li>
</Oul>
<CodeView>
mat plus "1" "2" "3" sum;
csl write sum;
</CodeView>
<Op>
    This example adds 1, 2, and 3, storing "6" in "sum" and printing it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">mat minus</Oh3>
<Op>Subtracts numbers from the first one and stores the result in a new variable.</Op>
<CodeView>mat minus (a) (b) ... (lastNum) (newVarName)</CodeView>
<Oul>
    <li><Ocode>a</Ocode>: The initial number (type: VAR).</li>
    <li><Ocode>b, ..., lastNum</Ocode>: The numbers to subtract (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable for the result (type: VAR).</li>
</Oul>
<CodeView>
mat minus "10" "2" "3" result;
csl write result;
</CodeView>
<Op>
    This example subtracts 2 and 3 from 10, storing "5" in "result" and printing it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">mat mult</Oh3>
<Op>Multiplies multiple numbers and stores the product in a new variable.</Op>
<CodeView>mat mult (a) (b) ... (lastNum) (newVarName)</CodeView>
<Oul>
    <li><Ocode>a, b, ..., lastNum</Ocode>: The numbers to multiply (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable for the product (type: VAR).</li>
</Oul>
<CodeView>
mat mult "2" "3" "4" product;
csl write product;
</CodeView>
<Op>
    This example multiplies 2, 3, and 4, storing "24" in "product" and printing it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">mat div</Oh3>
<Op>Divides the first number by subsequent numbers and stores the result in a new variable.</Op>
<CodeView>mat div (a) (b) ... (lastNum) (newVarName)</CodeView>
<Oul>
    <li><Ocode>a</Ocode>: The initial number (type: VAR).</li>
    <li><Ocode>b, ..., lastNum</Ocode>: The divisors (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable for the result (type: VAR).</li>
</Oul>
<CodeView>
mat div "100" "2" "5" result;
csl write result;
</CodeView>
<Op>
    This example divides 100 by 2 and then by 5, storing "10" in "result" and printing it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">bln not</Oh3>
<Op>Performs a logical "NOT" operation on a boolean value and stores the result in a new variable.</Op>
<CodeView>bln not (a) (newVarName)</CodeView>
<Oul>
    <li><Ocode>a</Ocode>: The boolean value to negate ("true" or "false") (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the result (type: VAR).</li>
</Oul>
<CodeView>
var set "true" condition;
bln not condition negated;
csl write negated;
</CodeView>
<Op>
    This example negates "true" to "false" and prints the result.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">bln and</Oh3>
<Op>Performs a logical "AND" operation on two boolean values and stores the result in a new variable.</Op>
<CodeView>bln and (a) (b) (newVarName)</CodeView>
<Oul>
    <li><Ocode>a</Ocode>: The first boolean value ("true" or "false") (type: VAR).</li>
    <li><Ocode>b</Ocode>: The second boolean value ("true" or "false") (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the result (type: VAR).</li>
</Oul>
<CodeView>
bln and "true" "false" result;
csl write result;
</CodeView>
<Op>
    This example performs "true AND false", storing "false" in "result" and printing it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">bln or</Oh3>
<Op>Performs a logical "OR" operation on two boolean values and stores the result in a new variable.</Op>
<CodeView>bln or (a) (b) (newVarName)</CodeView>
<Oul>
    <li><Ocode>a</Ocode>: The first boolean value ("true" or "false") (type: VAR).</li>
    <li><Ocode>b</Ocode>: The second boolean value ("true" or "false") (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the result (type: VAR).</li>
</Oul>
<CodeView>
bln or "true" "false" result;
csl write result;
</CodeView>
<Op>
    This example performs "true OR false", storing "true" in "result" and printing it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">bln xor</Oh3>
<Op>Performs a logical "XOR" operation on two boolean values and stores the result in a new variable.</Op>
<CodeView>bln xor (a) (b) (newVarName)</CodeView>
<Oul>
    <li><Ocode>a</Ocode>: The first boolean value ("true" or "false") (type: VAR).</li>
    <li><Ocode>b</Ocode>: The second boolean value ("true" or "false") (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the result (type: VAR).</li>
</Oul>
<CodeView>
bln xor "true" "true" result;
csl write result;
</CodeView>
<Op>
    This example performs "true XOR true", storing "false" in "result" and printing it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt aes-enc</Oh3>
<Op>Encrypts text using AES with a specified key and stores the encrypted result in a new variable.</Op>
<CodeView>crt aes-enc (text) (key) (newVarName)</CodeView>
<Oul>
    <li><Ocode>text</Ocode>: The text to encrypt (type: VAR).</li>
    <li><Ocode>key</Ocode>: The encryption key (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the encrypted text (type: VAR).</li>
</Oul>
<CodeView>
crt aes-enc "Secret message" "myKey123" encrypted;
csl write encrypted;
</CodeView>
<Op>
    This example encrypts "Secret message" with "myKey123" and prints the encrypted result.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt aes-dec</Oh3>
<Op>Decrypts AES-encrypted text using a specified key and stores the decrypted result in a new variable.</Op>
<CodeView>crt aes-dec (text) (key) (newVarName)</CodeView>
<Oul>
    <li><Ocode>text</Ocode>: The encrypted text to decrypt (type: VAR).</li>
    <li><Ocode>key</Ocode>: The decryption key (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the decrypted text (type: VAR).</li>
</Oul>
<CodeView>
crt aes-enc "Secret message" "myKey123" encrypted;
crt aes-dec encrypted "myKey123" decrypted;
csl write decrypted;
</CodeView>
<Op>
    This example encrypts "Secret message", decrypts it with the same key, and prints "Secret message".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt base64-enc</Oh3>
<Op>Encodes text into Base64 and stores the result in a new variable.</Op>
<CodeView>crt base64-enc (text) (newVarName)</CodeView>
<Oul>
    <li><Ocode>text</Ocode>: The text to encode (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the Base64-encoded text (type: VAR).</li>
</Oul>
<CodeView>
crt base64-enc "Hello" encoded;
csl write encoded;
</CodeView>
<Op>
    This example encodes "Hello" into "SGVsbG8=" and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt base64-dec</Oh3>
<Op>Decodes Base64-encoded text and stores the result in a new variable.</Op>
<CodeView>crt base64-dec (text) (newVarName)</CodeView>
<Oul>
    <li><Ocode>text</Ocode>: The Base64-encoded text to decode (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the decoded text (type: VAR).</li>
</Oul>
<CodeView>
crt base64-enc "Hello" encoded;
crt base64-dec encoded decoded;
csl write decoded;
</CodeView>
<Op>
    This example encodes "Hello" to Base64, decodes it back, and prints "Hello".
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt hmac-enc</Oh3>
<Op>Creates an HMAC (hash-based message authentication code) for text using a key and stores it in a new variable.</Op>
<CodeView>crt hmac-enc (text) (key) (newVarName)</CodeView>
<Oul>
    <li><Ocode>text</Ocode>: The text to create an HMAC for (type: VAR).</li>
    <li><Ocode>key</Ocode>: The key for HMAC generation (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the HMAC (type: VAR).</li>
</Oul>
<CodeView>
crt hmac-enc "Message" "secretKey" hmac;
csl write hmac;
</CodeView>
<Op>
    This example generates an HMAC for "Message" with "secretKey" and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt hmac-ver</Oh3>
<Op>Verifies an HMAC for text using a key and stores the result ("true" or "false") in a new variable.</Op>
<CodeView>crt hmac-ver (text) (mac) (key) (newVarName)</CodeView>
<Oul>
    <li><Ocode>text</Ocode>: The original text (type: VAR).</li>
    <li><Ocode>mac</Ocode>: The HMAC to verify (type: VAR).</li>
    <li><Ocode>key</Ocode>: The key used for HMAC generation (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the new variable to store the verification result (type: VAR).</li>
</Oul>
<CodeView>
crt hmac-enc "Message" "secretKey" hmac;
crt hmac-ver "Message" hmac "secretKey" isValid;
csl write isValid;
</CodeView>
<Op>
    This example generates an HMAC and verifies it, printing "true" if valid.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt kem-pair</Oh3>
<Op>Generates a key pair for KEM (Key Encapsulation Mechanism) and stores the public and private keys in new variables.</Op>
<CodeView>crt kem-pair (publicNewVarName) (privateNewVarName)</CodeView>
<Oul>
    <li><Ocode>publicNewVarName</Ocode>: The name of the variable to store the public key (type: VAR).</li>
    <li><Ocode>privateNewVarName</Ocode>: The name of the variable to store the private key (type: VAR).</li>
</Oul>
<CodeView>
crt kem-pair publicKey privateKey;
csl write publicKey;
</CodeView>
<Op>
    This example generates a KEM key pair and prints the public key.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt kem-enc</Oh3>
<Op>Encapsulates a shared key using KEM with a public key, storing the ciphertext and shared key in new variables.</Op>
<CodeView>crt kem-enc (publicKey) (ciphertextNewVarName) (sharedKeyNewVarName)</CodeView>
<Oul>
    <li><Ocode>publicKey</Ocode>: The public key for encapsulation (type: VAR).</li>
    <li><Ocode>ciphertextNewVarName</Ocode>: The name of the variable to store the ciphertext (type: VAR).</li>
    <li><Ocode>sharedKeyNewVarName</Ocode>: The name of the variable to store the shared key (type: VAR).</li>
</Oul>
<CodeView>
crt kem-pair publicKey privateKey;
crt kem-enc publicKey ciphertext sharedKey;
csl write sharedKey;
</CodeView>
<Op>
    This example encapsulates a shared key with a public key and prints the shared key.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt kem-dec</Oh3>
<Op>Decapsulates a shared key using KEM with a private key and ciphertext, storing the shared key in a new variable.</Op>
<CodeView>crt kem-dec (ciphertext) (privateKey) (sharedKeyNewVarName)</CodeView>
<Oul>
    <li><Ocode>ciphertext</Ocode>: The ciphertext to decapsulate (type: VAR).</li>
    <li><Ocode>privateKey</Ocode>: The private key for decapsulation (type: VAR).</li>
    <li><Ocode>sharedKeyNewVarName</Ocode>: The name of the variable to store the shared key (type: VAR).</li>
</Oul>
<CodeView>
crt kem-pair publicKey privateKey;
crt kem-enc publicKey ciphertext sharedKeyEnc;
crt kem-dec ciphertext privateKey sharedKeyDec;
csl write sharedKeyDec;
</CodeView>
<Op>
    This example generates a key pair, encapsulates a key, decapsulates it, and prints the shared key.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt dsa-pair</Oh3>
<Op>Generates a key pair for DSA (Digital Signature Algorithm) and stores the public and private keys in new variables.</Op>
<CodeView>crt dsa-pair (publicNewVarName) (privateNewVarName)</CodeView>
<Oul>
    <li><Ocode>publicNewVarName</Ocode>: The name of the variable to store the public key (type: VAR).</li>
    <li><Ocode>privateNewVarName</Ocode>: The name of the variable to store the private key (type: VAR).</li>
</Oul>
<CodeView>
crt dsa-pair publicKey privateKey;
csl write publicKey;
</CodeView>
<Op>
    This example generates a DSA key pair and prints the public key.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt dsa-sign</Oh3>
<Op>Signs a message using DSA with public and private keys, storing the signature in a new variable.</Op>
<CodeView>crt dsa-sign (message) (publicKey) (privateKey) (signatureNewVarName)</CodeView>
<Oul>
    <li><Ocode>message</Ocode>: The message to sign (type: VAR).</li>
    <li><Ocode>publicKey</Ocode>: The public key (type: VAR).</li>
    <li><Ocode>privateKey</Ocode>: The private key (type: VAR).</li>
    <li><Ocode>signatureNewVarName</Ocode>: The name of the variable to store the signature (type: VAR).</li>
</Oul>
<CodeView>
crt dsa-pair publicKey privateKey;
crt dsa-sign "Hello" publicKey privateKey signature;
csl write signature;
</CodeView>
<Op>
    This example signs "Hello" with DSA keys and prints the signature.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt dsa-verify</Oh3>
<Op>Verifies a DSA signature for a message using a public key, storing the result ("true" or "false") in a new variable.</Op>
<CodeView>crt dsa-verify (message) (signature) (publicKey) (newVarName)</CodeView>
<Oul>
    <li><Ocode>message</Ocode>: The original message (type: VAR).</li>
    <li><Ocode>signature</Ocode>: The signature to verify (type: VAR).</li>
    <li><Ocode>publicKey</Ocode>: The public key (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the variable to store the verification result (type: VAR).</li>
</Oul>
<CodeView>
crt dsa-pair publicKey privateKey;
crt dsa-sign "Hello" publicKey privateKey signature;
crt dsa-verify "Hello" signature publicKey isValid;
csl write isValid;
</CodeView>
<Op>
    This example signs "Hello", verifies the signature, and prints "true" if valid.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt sha256</Oh3>
<Op>Computes the SHA-256 hash of text and stores it in a new variable.</Op>
<CodeView>crt sha256 (text) (newVarName)</CodeView>
<Oul>
    <li><Ocode>text</Ocode>: The text to hash (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the variable to store the hash (type: VAR).</li>
</Oul>
<CodeView>
crt sha256 "Hello" hash;
csl write hash;
</CodeView>
<Op>
    This example computes the SHA-256 hash of "Hello" and prints it (e.g., "a591a6d40bf...").
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt sha512</Oh3>
<Op>Computes the SHA-512 hash of text and stores it in a new variable.</Op>
<CodeView>crt sha512 (text) (newVarName)</CodeView>
<Oul>
    <li><Ocode>text</Ocode>: The text to hash (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the variable to store the hash (type: VAR).</li>
</Oul>
<CodeView>
crt sha512 "Hello" hash;
csl write hash;
</CodeView>
<Op>
    This example computes the SHA-512 hash of "Hello" and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt jwt-enc</Oh3>
<Op>Creates a JWT (JSON Web Token) from a payload and secret, storing it in a new variable.</Op>
<CodeView>crt jwt-enc (payload) (secret) (newVarName)</CodeView>
<Oul>
    <li><Ocode>payload</Ocode>: The data for the token (type: VAR).</li>
    <li><Ocode>secret</Ocode>: The secret key for signing (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the variable to store the JWT (type: VAR).</li>
</Oul>
<CodeView>
crt jwt-enc "user:john" "mySecret" token;
csl write token;
</CodeView>
<Op>
    This example creates a JWT with payload "user:john" and prints it.
</Op>
</Card>

<Card>
<Oh3 class="notranslate">crt jwt-ver</Oh3>
<Op>Verifies a JWT with a secret key and stores the result ("true" or "false") in a new variable.</Op>
<CodeView>crt jwt-ver (token) (secret) (newVarName)</CodeView>
<Oul>
    <li><Ocode>token</Ocode>: The JWT to verify (type: VAR).</li>
    <li><Ocode>secret</Ocode>: The secret key used for signing (type: VAR).</li>
    <li><Ocode>newVarName</Ocode>: The name of the variable to store the verification result (type: VAR).</li>
</Oul>
<CodeView>
crt jwt-enc "user:john" "mySecret" token;
crt jwt-ver token "mySecret" isValid;
csl write isValid;
</CodeView>
<Op>
    This example creates a JWT, verifies it, and prints "true" if valid.
</Op>
</Card>

    
</div>