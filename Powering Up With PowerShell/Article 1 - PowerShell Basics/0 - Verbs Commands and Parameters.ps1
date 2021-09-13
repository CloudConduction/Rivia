# To list all possible verbs
Get-Verb

# To list all commands
Get-Command	
# To list commands filtered by a verb
Get-Command -Verb ‘Get’
# To list commands filters by a noun
Get-Command -Noun A*
# To list commands filtered by both a verb and a noun
Get-Command -Verb Get -Noun A*

