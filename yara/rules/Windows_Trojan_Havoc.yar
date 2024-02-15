rule Windows_Trojan_Havoc_77f3d40e {
    meta:
        author = "Elastic Security"
        id = "77f3d40e-9365-4e76-a1a3-36d128e775a9"
        fingerprint = "95d35d167df7f77f23b1afb1b7655cc47830c9986c54791b562c33db8f2773ae"
        creation_date = "2022-10-20"
        last_modified = "2022-11-24"
        threat_name = "Windows.Trojan.Havoc"
        reference_sample = "3427dac129b760a03f2c40590c01065c9bf2340d2dfa4a4a7cf4830a02e95879"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $core = { 48 ?? ?? 2C 06 00 00 00 ?? ?? 48 ?? ?? 5C 06 00 00 00 ?? ?? ?? ?? ?? ?? 48 8B ?? 5C 06 00 00 ?? F6 99 5A 2E E8 ?? ?? ?? ?? 48 8B ?? 48 ?? ?? 4C 02 00 00 48 8B ?? 5C 06 00 00 ?? 23 DB 07 03 E8 ?? ?? ?? ?? 48 8B ?? 48 ?? ?? 44 02 00 00 48 8B ?? 5C 06 00 00 ?? DA 81 B3 C0 E8 ?? ?? ?? ?? 48 8B ?? 48 ?? ?? 54 02 00 00 48 8B ?? 5C 06 00 00 ?? D7 71 BA 70 E8 ?? ?? ?? ?? 48 8B ?? 48 ?? ?? 64 02 00 00 48 8B ?? 5C 06 00 00 ?? 88 2B 49 8E E8 ?? ?? ?? ?? 48 8B ?? 48 ?? ?? 84 02 00 00 48 8B ?? 5C 06 00 00 ?? EF F0 A1 3A E8 ?? ?? ?? ?? }
        $commands_table = { 0B 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 64 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 15 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 10 10 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 0C 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? [0-12] 0F 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 14 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 01 20 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 03 20 00 00 ?? ?? ?? ?? ?? ?? ?? ?? C4 09 00 00 ?? ?? ?? ?? ?? ?? ?? ?? CE 09 00 00 ?? ?? ?? ?? ?? ?? ?? ?? D8 09 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 34 08 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 16 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 18 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 1A 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 28 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 5C 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? }
        $hashes_0 = { F6 99 5A 2E }
        $hashes_1 = { DA 81 B3 C0 }
        $hashes_2 = { D7 71 BA 70 }
        $hashes_3 = { 88 2B 49 8E }
        $hashes_4 = { EF F0 A1 3A }
        $hashes_5 = { F5 39 34 7C }
        $hashes_6 = { 2A 92 12 D8 }
        $hashes_7 = { 8D F1 4F 84 }
        $hashes_8 = { 5B BC CE 73 }
        $hashes_9 = { 59 24 93 B8 }
        $hashes_10 = { 02 9E D0 C2 }
        $hashes_11 = { E5 36 26 AE }
        $hashes_12 = { 5C 3C B4 F3 }
        $hashes_13 = { 2F 87 D8 1C }
        $hashes_14 = { D7 53 22 AC }
    condition:
        $core or ($commands_table and all of ($hashes*))
}

rule Windows_Trojan_Havoc_9c7bb863 {
    meta:
        author = "Elastic Security"
        id = "9c7bb863-b6c2-4d5f-ae50-0fd900f1d4eb"
        fingerprint = "cda55a9e65badb984e71778b081929db2bdef223792b78bba32b2259757f1348"
        creation_date = "2023-04-28"
        last_modified = "2023-06-13"
        threat_name = "Windows.Trojan.Havoc"
        reference_sample = "261b92d9e8dcb9d0abf1627b791831ec89779f2b7973b1926c6ec9691288dd57"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = { 56 48 89 E6 48 83 E4 F0 48 83 EC 20 E8 0F 00 00 00 48 89 F4 5E C3 }
        $a2 = { 65 48 8B 04 25 60 00 00 00 }
    condition:
        all of them
}

rule Windows_Trojan_Havoc_9c8bb863 {
    meta:
        author = "Karma-X Inc"
        id = "9c7bb863-b6c2-4d5f-ae50-aad900f1d4eb"
        creation_date = "2024-02-15"
        last_modified = "2023-02-15"
        threat_name = "Windows.Trojan.Havoc"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = { 56 90 48 89 E6 48 83 E4 F0 48 83 EC 20 E8 0F 00 00 00 48 89 F4 5E C3 }
        $a2 = { 65 48 8B 04 25 60 00 00 00 }
    condition:
        all of them
}

rule Windows_Trojan_Havoc_88053562 {
    meta:
        author = "Elastic Security"
        id = "88053562-ae19-44fe-8aaf-d6b9687d6b80"
        fingerprint = "818011b7972ab71cbfe07ec2266f504ba0ec7df30136e414d15366aa68ad5b8a"
        creation_date = "2024-01-04"
        last_modified = "2024-01-12"
        threat_name = "Windows.Trojan.Havoc"
        reference_sample = "2f0b59f8220edd0d34fba92905faf0b51aead95d53be8b5f022eed7e21bdb4af"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a = { 48 81 EC F8 04 00 00 48 8D 7C 24 78 44 89 8C 24 58 05 00 00 48 8B AC 24 60 05 00 00 4C 8D 6C 24 78 F3 AB B9 59 00 00 00 48 C7 44 24 70 00 00 00 00 C7 44 24 78 68 00 00 00 C7 84 24 B4 00 00 00 }
    condition:
        all of them
}

rule Windows_Trojan_Havoc_88153562 {
    meta:
        author = "Karma-X Inc"
        id = "88053562-ae19-44fe-8aaf-aab9687d6b80"
        creation_date = "2024-02-15"
        last_modified = "2024-02-15"
        threat_name = "Windows.Trojan.Havoc"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a = { 48 81 EC F8 05 00 00 48 8D 7C 24 78 44 89 8C 24 58 05 00 00 48 8B AC 24 60 05 00 00 4C 8D 6C 24 78 F3 AB B9 59 00 00 00 48 C7 44 24 70 00 00 00 00 C7 44 24 78 68 00 00 00 C7 84 24 B4 00 00 00 }
    condition:
        all of them
}

