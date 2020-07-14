.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xe554, %rsi
lea addresses_WC_ht+0x7554, %rdi
cmp %r15, %r15
mov $33, %rcx
rep movsq
nop
nop
xor $48553, %r12
lea addresses_UC_ht+0x8d54, %r15
nop
and %r13, %r13
vmovups (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
inc %r13
lea addresses_A_ht+0x9554, %rsi
lea addresses_A_ht+0x6994, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r13, %r13
mov $95, %rcx
rep movsw
cmp $54631, %rdi
lea addresses_UC_ht+0xa294, %r15
clflush (%r15)
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
cmp $43660, %r15
lea addresses_WT_ht+0xf4d4, %rsi
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x161, %rsi
lea addresses_D_ht+0x1c98c, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $41, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x170c8, %rsi
lea addresses_UC_ht+0x1b374, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r8, %r8
mov $101, %rcx
rep movsq
nop
nop
nop
inc %r8
lea addresses_WC_ht+0x8954, %rsi
lea addresses_D_ht+0x1c9d8, %rdi
nop
nop
nop
nop
and $32938, %r12
mov $93, %rcx
rep movsq
dec %rcx
lea addresses_WT_ht+0x1e1d4, %rsi
nop
nop
cmp %r8, %r8
movb $0x61, (%rsi)
add %rcx, %rcx
lea addresses_WC_ht+0x594, %rsi
lea addresses_normal_ht+0x1db4, %rdi
nop
nop
xor $2203, %r12
mov $46, %rcx
rep movsl
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x13d34, %r8
nop
nop
nop
xor $10614, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r8)
sub %rdx, %rdx
lea addresses_WC_ht+0x1dc54, %r15
nop
nop
nop
nop
and %r8, %r8
movb (%r15), %r13b
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x64cc, %r13
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %r12
movq %r12, (%r13)
nop
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0x454, %rdi
nop
add %rcx, %rcx
movw $0x6162, (%rdi)
cmp %rdx, %rdx
lea addresses_WC_ht+0x1154, %r13
nop
nop
nop
add $48482, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm7
and $0xffffffffffffffc0, %r13
vmovaps %ymm7, (%r13)
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_UC+0xbd04, %rcx
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%rcx)
nop
and $57569, %rbp

// Store
lea addresses_normal+0xa264, %r12
nop
nop
dec %rbx
mov $0x5152535455565758, %r9
movq %r9, (%r12)
nop
dec %rbp

// Load
lea addresses_US+0x1df14, %rbx
nop
nop
nop
nop
and %r8, %r8
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %rbp
cmp %rcx, %rcx

// Faulty Load
lea addresses_UC+0x12554, %r8
nop
sub %rbp, %rbp
movb (%r8), %bl
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
