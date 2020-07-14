# Medusa Code Repository

This repository includes the Transynther tool, the proof of concept code for the Medusa attack and the RSA key 
recovery data set, as presented by the academic paper ["Medusa: Microarchitectural Data Leakage via Automated Attack Synthesis"](https://www.usenix.org/conference/usenixsecurity20/presentation/moghimi-medusa). Please cite this work as the following:

```
@inproceedings {moghimi2020medusa,
    author = {Daniel Moghimi and Moritz Lipp and Berk Sunar and Michael Schwarz},
    title = {{Medusa: Microarchitectural Data Leakage via Automated Attack Synthesis}},
    booktitle = {29th {USENIX} Security Symposium ({USENIX} Security 20)},
    year = {2020},
    address = {Boston, MA},
    url = {https://www.usenix.org/conference/usenixsecurity20/presentation/moghimi-medusa},
    publisher = {{USENIX} Association},
    month = aug,
}
```

## Transynther

Transynther automatically generates and tests building blocks for Meltdown attacks with various faults and microcode assists. It is based on fuzzing-type techniques to mutate, evolve, and combine these building blocks and evaluate whether the newly synthesized code variants are indeed a variant of a Meltdown attack by trying to leak predefined values.
Transynther and some generated log files (including synthesized attack codes) is accessible at this [directory](Transynther).

## Dependencies

Transynther depends on the [PTEditor](https://github.com/misc0110/PTEditor), a small library to modify all page-table levels of all processes from user space.


## Medusa Attack
We used Transynther to analyze the behavior of Intel CPUs concerning Meltdown-style attacks. Our analysis leads to the discovery of a new variant of these attacks, named Medusa. On MDS-vulnerable CPUs, Medusa can leak data from implicit write-combining memory operations. Since Medusa only applies to specific operations like the `rep mov` and `rep sto` instructions, it is more targetted and less noisy. Therefore, it can be used to pinpoint vulnerable targets. The proof of concept code for three different variants of Medusa is accessible at this [directory](Medusa_POC)

## RSA Key Recovery Dataset

In the technical paper, we applied Medusa to demonstrate an attack that steals RSA keys from OpenSSL. OpenSSL store cryptographic keys including RSA in PEM format. During the decoding of the PEM format, OpenSSL's implementation of base64 decoding may use implicit memory copy instructions depending on the compilation flag. We show that during the decoding of the key, the `rep mov` instruction exposes part of the RSA key parameters to Medusa. We created a template attack by stitching the recovered partial key parameters and applied the Coppersmith's attack to recover the full RSA private key.
The dataset for this demonstration is accessible at this [directory](RSA_Data).

## Latest finding on Ice Lake

In addition to what we presented here, we also later on tested Transynther on a 
new MDS-resistant Intel CPU generation that was never vulnerable to any of the previous MDS attacks. with the help of Transynther, we could easily reproduce one of the variants of MDS attacks dubbed MSBDS on the Ice Lake architecture. Following the responsible disclosure, A technical report regarding the Ice Lake issue is released in this [repository](https://github.com/danielmgmi/IceBreak).

## Credits

* Daniel Moghimi [@danielmgmi](https://twitter.com/danielmgmi)
* Moritz Lipp [@mlqxyz](https://twitter.com/mlqxyz)
* Berk Sunar [@berksunar](https://twitter.com/berksunar)
* Michael Schwarz [@misc0110](https://twitter.com/misc0110)

