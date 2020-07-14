.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xfdb5, %r11
nop
nop
nop
nop
nop
sub $34948, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r11)
nop
nop
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0x136e5, %rsi
lea addresses_D_ht+0x1a35, %rdi
nop
nop
sub $64019, %r11
mov $22, %rcx
rep movsb
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0xab19, %r10
nop
nop
nop
cmp $10009, %rbx
movl $0x61626364, (%r10)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x199f5, %rdi
nop
nop
nop
nop
nop
dec %rcx
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
dec %rdi
lea addresses_normal_ht+0xc8f5, %rsi
nop
nop
nop
nop
add %r9, %r9
movl $0x61626364, (%rsi)
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0xe3b5, %r11
nop
nop
nop
nop
sub %r10, %r10
movw $0x6162, (%r11)
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rdi
push %rdx

// Faulty Load
lea addresses_normal+0xe9f5, %r13
nop
nop
cmp %rdi, %rdi
vmovaps (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': True}}
{'ae': 72, '3c': 74, '4e': 6669, '9e': 155, 'cc': 78, '94': 77, '86': 75, '82': 69, '70': 76, '06': 372, '02': 77, '16': 364, '66': 226, '8a': 73, 'e8': 72, '04': 70, '8c': 147, '4c': 74, '64': 154, 'f6': 222, 'ca': 71, 'f0': 77, '6c': 72, '80': 76, '52': 73, '4a': 74, '76': 445, '00': 497, '38': 76, 'd2': 151, 'da': 149, '47': 3546, '26': 284, '2e': 71, 'be': 76, '48': 74, '2c': 76, 'b2': 71, '14': 74, '5e': 77, '5c': 73, 'c4': 74, 'bc': 75, '24': 68, 'ce': 75, '3a': 148, 'e2': 75, '4f': 1217, 'd8': 74, 'dc': 75, '72': 69, 'ac': 72, '36': 363, 'b4': 75, '3e': 74, '40': 67, 'a6': 379, '7c': 73, 'fc': 72, 'ba': 72, '62': 150, '30': 72, '54': 74, '58': 69, '98': 76, 'e6': 283, '32': 53, 'b6': 218, 'b0': 74, 'd4': 71, 'c6': 220, 'd6': 149, '18': 76, '0c': 76, '56': 221, '9c': 70, 'c8': 68, '90': 72, '46': 76, '28': 76, '9a': 68, '6a': 69, '7e': 74, '34': 73, 'fe': 78, '10': 144, '96': 431, '5a': 72}
00 00 00 00 96 96 96 96 96 96 96 96 96 47 96 96 96 96 96 96 96 96 96 96 96 96 96 96 96 96 96 96 96 96 96 96 96 96 96 96 47 96 47 96 00 96 96 96 96 96 96 96 96 96 96 96 96 00 96 96 47 96 96 96 96 96 96 96 96 96 96 96 96 00 96 96 96 96 47 47 96 96 96 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 00 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 47 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 47 56 56 56 56 56 56 00 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 47 56 56 47 56 56 56 56 56 56 56 00 56 56 56 56 56 56 56 56 56 00 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 00 06 06 06 06 06 06 06 06 06 06 06 06 06 47 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 47 06 06 06 06 06 47 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 47 06 06 06 06 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 47 4e 4e 4e 00 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 47 4e 4e 4e 4e 4e 4e 47 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 00 4e 4e 4e 4e 4e 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 00 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 00 00 4e 4e 00 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 47 4e 4e 4e 4e 4e 4e 47 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 47 4e 4e 4e 4e 4e 4e 4e 4e 4e 00 4e 4e 4e 47 4e 47 4e 4e 47 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 47 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 47 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 00 4e 4e 4e 4e 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 00 00 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 00 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 00 76 76 76 76 76 76 76 76 76 00 26 26 26 26 26 47 26 26 26 26 47 26 26 26 47 26 26 26 26 26 26 26 26 26 26 26 26 26 26 26 26 26 26 26 26 26 26 26 47 26 26 26 00 26 26 47 26 26 26 26 26 26 26 26 00 47 26 26 26 26 26 26 26 26 26 26 26 47 26 26 26 26 26 26 26 26 26 26 26 26 47 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 47 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e
*/
