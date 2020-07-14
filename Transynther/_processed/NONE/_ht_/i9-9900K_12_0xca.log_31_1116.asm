.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x5639, %rsi
lea addresses_WC_ht+0xb0a6, %rdi
nop
nop
nop
nop
sub $30706, %r11
mov $61, %rcx
rep movsw
nop
nop
nop
nop
xor $33260, %r10
lea addresses_UC_ht+0x1c2d, %r9
nop
nop
nop
nop
and %r13, %r13
mov (%r9), %r11w
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x5a2d, %rdi
nop
nop
nop
xor %r10, %r10
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1b6bf, %r10
nop
nop
nop
dec %r11
mov (%r10), %r9w
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1382d, %rsi
lea addresses_UC_ht+0x1102d, %rdi
nop
lfence
mov $0, %rcx
rep movsb
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1c0d, %rsi
lea addresses_A_ht+0xb6ad, %rdi
nop
nop
nop
nop
nop
sub $39274, %r11
mov $27, %rcx
rep movsq
and $38846, %r11
lea addresses_WT_ht+0x46bd, %rsi
lea addresses_WC_ht+0x1bdd1, %rdi
nop
nop
nop
nop
inc %rax
mov $34, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x1282d, %rsi
lea addresses_WC_ht+0xee6f, %rdi
cmp %r9, %r9
mov $103, %rcx
rep movsq
nop
nop
nop
add $44368, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rdi
push %rsi

// Store
mov $0x4506010000000268, %rax
add $7763, %rsi
movb $0x51, (%rax)
nop
xor %r8, %r8

// Load
lea addresses_WT+0x1cf41, %rax
nop
nop
add $51307, %rbp
mov (%rax), %r15d
sub %rax, %rax

// Load
lea addresses_A+0x1a02d, %rdi
nop
nop
and $34889, %r15
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_normal+0x13425, %r15
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rax
movq %rax, (%r15)
nop
nop
nop
nop
dec %r15

// Store
lea addresses_US+0x1761d, %r15
add $8912, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
mov $0x627fea00000004bd, %rdi
nop
and %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
nop
nop
add %rsi, %rsi

// Load
lea addresses_RW+0x71ad, %r10
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov (%r10), %si
nop
nop
nop
nop
nop
dec %rax

// Store
lea addresses_WT+0x71cd, %rdi
nop
add $62356, %rbp
movw $0x5152, (%rdi)
nop
add %rdi, %rdi

// Faulty Load
lea addresses_A+0x1c02d, %rbp
nop
nop
add $20171, %rax
vmovups (%rbp), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'44': 30, '46': 1}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44
*/
