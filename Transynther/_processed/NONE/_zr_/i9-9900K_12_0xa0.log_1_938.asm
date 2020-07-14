.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbp
push %rdx
lea addresses_WT_ht+0xffc0, %r15
nop
nop
nop
and $5962, %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r15)
and $24621, %r11
lea addresses_WC_ht+0x153e0, %rdx
nop
nop
nop
nop
sub %r8, %r8
movb (%rdx), %r15b
nop
nop
nop
add %rbp, %rbp
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x9428, %rdi
nop
sub $21634, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
nop
inc %r8

// Store
lea addresses_US+0x1c5c0, %rcx
nop
nop
nop
nop
add $40515, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rcx)

// Exception!!!
nop
nop
xor %r8, %r8
div %r8
nop
nop
nop
xor $47980, %rax

// Load
lea addresses_WC+0x182c0, %rdi
nop
nop
nop
nop
nop
inc %r10
vmovntdqa (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_WT+0x29c0, %rax
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
nop
inc %rdi

// Load
lea addresses_PSE+0x185c0, %r8
nop
nop
nop
nop
nop
sub %rax, %rax
mov (%r8), %bx
nop
sub %r8, %r8

// Store
lea addresses_RW+0x1e8f7, %rax
nop
nop
nop
nop
nop
xor $29316, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movntdq %xmm2, (%rax)
nop
nop
nop
sub $45910, %r14

// Store
lea addresses_WT+0x1a140, %r8
nop
nop
nop
nop
cmp %rax, %rax
movb $0x51, (%r8)
nop
nop
nop
nop
cmp $11002, %rdi

// REPMOV
lea addresses_A+0xf9c0, %rsi
lea addresses_A+0x30e0, %rdi
nop
inc %rbx
mov $51, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_RW+0x67c0, %rsi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
nop
nop
sub $63791, %rbx

// Store
mov $0xc0, %r14
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
nop
nop
and $46777, %rbx

// Faulty Load
lea addresses_WT+0x29c0, %rsi
sub $64432, %rdi
vmovups (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
{'src': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'00': 1}
00
*/
