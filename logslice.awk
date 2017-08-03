BEGIN { 
    inzone=0
}

$0 ~ startpattern { inzone=1 }
$0 ~ endpattern   { inzone=2 }
inzone == 2 && $0 !~ endpattern { exit }
inzone > 0 { print }
