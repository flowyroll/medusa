.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1efa4, %rcx
nop
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
nop
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x187a4, %r11
nop
nop
nop
nop
nop
xor %r14, %r14
movw $0x6162, (%r11)
nop
nop
and $30081, %r11
lea addresses_WC_ht+0x410c, %rsi
lea addresses_normal_ht+0x3764, %rdi
nop
and %rdx, %rdx
mov $125, %rcx
rep movsl
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0xfa4, %rsi
nop
nop
nop
nop
nop
cmp $46149, %rdi
movw $0x6162, (%rsi)
nop
xor %rdi, %rdi
lea addresses_D_ht+0xfda4, %r14
inc %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
and $0xffffffffffffffc0, %r14
movntdq %xmm2, (%r14)
sub $1313, %rsi
lea addresses_WT_ht+0x11fa4, %rsi
lea addresses_WC_ht+0xdd34, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $47977, %r14
mov $52, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x1bf56, %rdx
nop
nop
nop
nop
nop
cmp $43431, %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %rdx
vmovaps %ymm2, (%rdx)
nop
sub $25126, %rcx
lea addresses_WC_ht+0x61a4, %rdi
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
add $36843, %rdi
lea addresses_WT_ht+0x1c1a4, %r11
nop
nop
nop
nop
nop
and $7546, %r14
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x78d0, %r8
nop
nop
nop
nop
cmp $49561, %rdi
mov $0x5152535455565758, %r14
movq %r14, (%r8)
nop
nop
cmp %rdi, %rdi

// REPMOV
lea addresses_WT+0x19ae4, %rsi
lea addresses_D+0x1bfa4, %rdi
clflush (%rsi)
nop
nop
sub %r12, %r12
mov $74, %rcx
rep movsb
nop
cmp %r12, %r12

// Load
lea addresses_A+0x129a4, %rdi
and %rsi, %rsi
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r8

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r8
sub $726, %r8

// Load
lea addresses_WC+0x16ef4, %rsi
sub $9080, %rdi
mov (%rsi), %rcx
nop
nop
nop
cmp $28688, %rcx

// Load
lea addresses_normal+0xc7a4, %r12
nop
nop
nop
xor $25635, %rcx
movups (%r12), %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_RW+0x18054, %rsi
nop
add $25898, %rax
movb $0x51, (%rsi)
nop
nop
nop
nop
sub $4127, %rax

// REPMOV
lea addresses_A+0xb7a4, %rsi
lea addresses_UC+0x132a4, %rdi
clflush (%rsi)
nop
dec %r14
mov $110, %rcx
rep movsq
nop
xor %r14, %r14

// Faulty Load
lea addresses_normal+0xc7a4, %r14
nop
nop
and $54251, %r8
vmovups (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'00': 1}
00
*/
