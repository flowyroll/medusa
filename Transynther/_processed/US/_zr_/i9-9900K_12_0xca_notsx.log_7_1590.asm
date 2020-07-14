.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xf8a, %rsi
lea addresses_D_ht+0x5cea, %rdi
dec %rdx
mov $117, %rcx
rep movsw
nop
and $30923, %r9
lea addresses_normal_ht+0x15caa, %r12
cmp $53506, %r11
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
cmp $52139, %r12
lea addresses_UC_ht+0x42aa, %r9
clflush (%r9)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%r9)
nop
nop
nop
nop
nop
and $59868, %rcx
lea addresses_D_ht+0x1e4c3, %r12
xor $9107, %r11
movw $0x6162, (%r12)
nop
nop
nop
and $15282, %r9
lea addresses_A_ht+0x98aa, %rsi
lea addresses_WT_ht+0x1ed42, %rdi
nop
nop
nop
nop
nop
and $26076, %rdx
mov $97, %rcx
rep movsl
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0xdcaa, %rsi
and $15760, %rdi
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
nop
nop
nop
add $39730, %rsi
lea addresses_UC_ht+0xa12, %rdi
nop
xor $24788, %r11
mov (%rdi), %ecx
nop
nop
nop
cmp $22563, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbp

// Store
lea addresses_PSE+0xd8fe, %r15
nop
nop
nop
and $33006, %r10
mov $0x5152535455565758, %r9
movq %r9, (%r15)
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_US+0xcaa, %rbp
xor %r10, %r10
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r15
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'00': 7}
00 00 00 00 00 00 00
*/
