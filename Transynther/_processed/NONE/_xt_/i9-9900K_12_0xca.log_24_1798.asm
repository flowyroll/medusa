.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x166e, %rsi
lea addresses_WC_ht+0x7636, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $60, %rcx
rep movsw
nop
nop
inc %r15
lea addresses_normal_ht+0x164a6, %rsi
lea addresses_normal_ht+0x2b66, %rdi
nop
nop
nop
nop
and $26597, %rbx
mov $49, %rcx
rep movsb
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x12966, %r12
nop
nop
nop
add $13117, %r11
movw $0x6162, (%r12)
nop
nop
nop
nop
sub $59792, %r15
lea addresses_WT_ht+0xeac6, %rsi
lea addresses_normal_ht+0x18912, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $41733, %r12
mov $124, %rcx
rep movsl
nop
nop
nop
nop
nop
and $28196, %r11
lea addresses_D_ht+0x4c9a, %rdi
xor $17808, %rcx
mov (%rdi), %r15w
nop
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x14b66, %rcx
nop
nop
nop
nop
nop
xor $42633, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
nop
sub $16680, %rcx
lea addresses_UC_ht+0x1176b, %rsi
lea addresses_normal_ht+0x7866, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $37, %rcx
rep movsq
nop
nop
nop
nop
and $24235, %r12
lea addresses_UC_ht+0xbb66, %r12
nop
nop
mfence
vmovups (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
nop
inc %r11
lea addresses_UC_ht+0x10d7b, %r11
nop
nop
nop
nop
cmp %r8, %r8
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0xa2b3, %rsi
nop
nop
xor %r15, %r15
mov (%rsi), %bx
nop
nop
add $25657, %rcx
lea addresses_D_ht+0xedd3, %rsi
lea addresses_WT_ht+0x136b6, %rdi
nop
nop
nop
mfence
mov $103, %rcx
rep movsq
nop
inc %r11
lea addresses_UC_ht+0x15682, %rbx
nop
nop
nop
nop
nop
sub $5680, %r8
mov (%rbx), %r12
nop
nop
nop
nop
nop
and $60052, %rcx
lea addresses_WC_ht+0x6b55, %rdi
nop
nop
nop
sub %rsi, %rsi
movb (%rdi), %r15b
nop
nop
cmp $16586, %rbx
lea addresses_A_ht+0xe506, %rsi
lea addresses_A_ht+0x18de, %rdi
nop
nop
nop
and $20040, %r15
mov $53, %rcx
rep movsl
nop
nop
nop
nop
cmp $21304, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x6a66, %rsi
lea addresses_PSE+0x1c1e6, %rdi
nop
nop
sub $51364, %r9
mov $25, %rcx
rep movsw
nop
and %rsi, %rsi

// Store
lea addresses_PSE+0x17b66, %r10
nop
nop
nop
sub %r8, %r8
movb $0x51, (%r10)
sub %r10, %r10

// Store
lea addresses_WT+0x17266, %rcx
cmp %rdi, %rdi
movw $0x5152, (%rcx)
nop
nop
nop
nop
xor $31841, %r8

// Load
lea addresses_PSE+0x1cd66, %rcx
clflush (%rcx)
nop
add %rdi, %rdi
movb (%rcx), %r10b
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_A+0x1ab66, %r9
nop
nop
nop
nop
cmp $59100, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
nop
xor %r10, %r10

// Load
lea addresses_WC+0xfb66, %r8
nop
nop
nop
nop
nop
xor $13293, %rbp
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_normal+0x5366, %rcx
nop
nop
nop
nop
cmp $46389, %r9
movb (%rcx), %r8b
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_PSE', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_PSE', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}}
{'34': 24}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
