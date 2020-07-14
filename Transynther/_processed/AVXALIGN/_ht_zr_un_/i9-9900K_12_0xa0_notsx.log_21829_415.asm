.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1568c, %r10
nop
nop
nop
nop
sub %rdx, %rdx
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x13d40, %rsi
lea addresses_A_ht+0x114f8, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r14
mov $67, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x160, %rsi
lea addresses_UC_ht+0x570, %rdi
nop
nop
add $51627, %r10
mov $39, %rcx
rep movsl
nop
nop
sub $50924, %rcx
lea addresses_WC_ht+0x1d5a8, %r14
nop
nop
sub $2277, %rdi
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
nop
nop
add $29288, %r14
lea addresses_A_ht+0xecd8, %r14
nop
nop
add $11541, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
nop
nop
xor $38247, %rdx
lea addresses_UC_ht+0x15240, %rcx
nop
nop
nop
nop
nop
sub $43986, %r13
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rax
push %rbx

// Store
lea addresses_WT+0x8070, %rax
nop
nop
inc %r11
mov $0x5152535455565758, %r12
movq %r12, (%rax)
nop
nop
add %rax, %rax

// Store
lea addresses_WT+0x183f8, %r13
nop
nop
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%r13)
nop
cmp %rbx, %rbx

// Store
lea addresses_RW+0x18938, %rax
nop
xor $40418, %r11
movb $0x51, (%rax)
nop
inc %r12

// Faulty Load
lea addresses_RW+0x18938, %r12
nop
cmp $44619, %r8
movaps (%r12), %xmm1
vpextrq $1, %xmm1, %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'47': 3, '08': 1, '48': 239, '45': 1651, '46': 1740, '00': 18195}
00 45 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 45 00 00 45 46 00 00 00 00 00 00 46 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 45 00 00 46 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 46 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 46 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 46 00 00 00 00 00 00 00 46 00 00 46 46 46 00 00 46 00 46 00 00 00 00 46 00 00 48 00 00 45 00 45 00 00 45 00 00 00 00 45 00 00 00 00 00 00 46 00 00 00 00 46 00 46 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 46 48 00 00 00 00 00 00 00 00 00 00 00 46 00 00 45 00 45 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 46 00 00 45 00 00 00 00 00 00 00 00 00 46 46 00 00 00 46 45 46 45 00 00 00 00 45 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 46 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 46 00 46 45 00 00 00 46 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 45 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 46 46 00 00 00 00 00 45 45 00 00 00 46 00 00 45 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 45 45 00 45 46 00 00 00 00 45 45 00 00 48 00 00 46 00 00 45 46 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 46 00 46 45 00 00 46 00 00 00 00 45 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 45 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 45 46 45 00 46 00 00 00 45 00 00 45 00 00 45 00 46 45 00 00 45 00 00 00 46 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 46 00 00 00 00 00 00 00 45 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 46 00 45 00 00 00 00 00 46 46 45 48 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 46 00 00 00 45 46 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 46 00 45 00 48 00 00 00 00 46 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 48 48 00 00 46 00 00 00 00 00 00 00 45 45 00 00 00 00 46 45 00 00 45 00 00 00 00 00 00 00 46 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 46 00 00 00 00 00 00 00 45 00 00 00 46 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 46 45 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00
*/
