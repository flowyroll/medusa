.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1afa5, %rax
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, (%rax)
nop
nop
nop
nop
and $41719, %rcx
lea addresses_WT_ht+0x12869, %rsi
lea addresses_WT_ht+0x1a8d5, %rdi
nop
add %rdx, %rdx
mov $78, %rcx
rep movsb
inc %r9
lea addresses_A_ht+0x15391, %rax
nop
nop
nop
nop
inc %rbp
mov (%rax), %si
sub %rsi, %rsi
lea addresses_D_ht+0x4285, %rsi
lea addresses_WT_ht+0x9c75, %rdi
nop
nop
dec %rbp
mov $69, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1aa65, %rax
nop
nop
sub $63154, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%rax)
nop
nop
and $22129, %rcx
lea addresses_UC_ht+0x1e471, %rsi
lea addresses_UC_ht+0x11379, %rdi
nop
nop
nop
nop
nop
sub $22611, %r8
mov $32, %rcx
rep movsq
nop
nop
nop
nop
xor $48436, %r9
lea addresses_UC_ht+0x16c25, %rsi
lea addresses_A_ht+0x102c5, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $96, %rcx
rep movsq
add %r9, %r9
lea addresses_WC_ht+0x273, %r8
nop
inc %rsi
movb (%r8), %cl
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x1357d, %rax
nop
nop
nop
nop
add %rsi, %rsi
mov (%rax), %ebp
nop
nop
nop
nop
nop
add $8221, %rax
lea addresses_D_ht+0x835e, %r8
nop
and %rdi, %rdi
movb (%r8), %r9b
add %r9, %r9
lea addresses_A_ht+0x14825, %rsi
lea addresses_WC_ht+0xdc91, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $103, %rcx
rep movsq
nop
nop
nop
nop
sub %r9, %r9
lea addresses_A_ht+0x67de, %rax
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %rax
movntdq %xmm7, (%rax)
sub %rax, %rax
lea addresses_A_ht+0x3fa5, %rdi
nop
nop
nop
nop
cmp $28974, %rax
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %r9
nop
nop
dec %r8
lea addresses_D_ht+0x1d765, %rdx
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
xor %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbx
push %rdi
push %rsi

// Store
lea addresses_D+0xe175, %r14
nop
add $40185, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r14)
nop
nop
and %r10, %r10

// Store
lea addresses_D+0x4581, %rbx
nop
xor $18202, %rsi
movl $0x51525354, (%rbx)

// Exception!!!
mov (0), %rdi
nop
cmp %rdi, %rdi

// Store
lea addresses_PSE+0xc16d, %rdi
nop
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rdi)
inc %r9

// Store
lea addresses_UC+0x199a5, %r14
dec %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%r14)
nop
dec %r14

// Faulty Load
lea addresses_UC+0xd9a5, %rbx
dec %r14
vmovups (%rbx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'4b': 1, '08': 2, '6d': 2, '00': 12959, 'b6': 1, '49': 10, 'c6': 1, '25': 2, 'c5': 3, 'ff': 3, '45': 8845}
45 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 45 45 00 45 00 45 00 45 45 00 00 00 00 45 45 00 45 00 00 00 45 45 00 00 00 45 00 45 00 00 45 00 00 45 00 45 45 00 00 45 45 45 45 00 00 00 45 00 45 45 00 00 45 45 00 00 00 00 00 45 45 00 00 45 00 00 00 45 45 00 00 45 45 00 45 00 45 00 00 00 45 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 45 00 45 45 45 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 45 45 45 00 45 45 00 00 00 00 00 00 45 45 45 45 00 45 00 45 00 00 45 00 00 45 45 45 00 00 45 45 45 45 00 45 00 45 00 45 00 45 00 00 45 45 00 00 00 45 45 00 45 45 45 00 00 45 00 45 00 00 00 00 00 00 00 00 45 45 45 00 45 00 45 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 45 45 00 45 45 00 00 00 00 00 45 45 45 00 00 00 45 00 45 00 00 45 45 45 00 00 00 45 00 45 00 45 00 00 00 00 45 00 45 00 00 45 00 00 00 00 45 45 00 00 00 45 45 00 45 00 00 00 45 00 45 45 00 00 00 00 00 00 45 00 00 00 45 00 45 00 45 00 00 45 00 00 00 45 00 45 00 45 00 00 45 45 45 45 00 45 45 00 00 00 00 45 00 00 45 00 00 00 45 00 00 45 00 45 45 00 45 00 45 00 45 00 00 00 00 45 00 45 45 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 45 00 00 45 00 00 45 00 00 45 00 45 00 45 00 45 45 45 45 00 00 00 00 00 00 45 45 00 00 45 45 45 00 00 00 45 00 45 00 00 00 45 45 00 00 00 00 00 00 00 45 45 00 00 00 45 00 45 00 45 00 00 00 00 45 00 00 00 45 00 45 45 00 45 45 00 45 45 45 00 00 00 00 00 45 45 00 45 00 00 45 00 00 00 45 00 45 00 00 45 00 00 00 00 00 45 00 45 45 00 45 45 00 45 45 00 00 45 00 45 45 45 00 45 00 00 00 45 45 45 00 00 45 45 00 00 00 00 45 45 00 00 00 00 00 00 00 00 45 00 45 45 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 00 45 45 45 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 45 00 45 00 00 45 00 45 00 45 45 00 00 45 45 00 00 45 45 45 00 45 00 00 45 00 00 00 00 00 45 00 45 00 45 45 00 00 00 00 00 45 45 45 45 00 00 45 00 45 00 00 00 45 45 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 45 45 45 45 45 00 45 00 00 00 00 00 45 00 00 45 00 00 45 00 45 45 45 00 45 00 45 00 00 00 45 00 00 45 45 00 00 00 00 00 00 00 45 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 45 45 00 00 45 00 45 00 00 00 00 00 00 45 45 45 45 00 00 45 00 00 45 00 45 45 45 45 00 45 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 00 00 00 00 00 45 00 00 45 45 00 45 45 00 45 00 45 45 00 00 45 45 00 45 45 45 45 45 00 00 45 00 00 00 45 00 00 00 00 45 45 45 00 00 00 45 00 00 45 00 45 45 00 45 45 00 00 45 45 00 45 00 45 00 45 00 45 45 45 00 45 45 00 45 00 45 00 00 45 45 45 00 45 45 45 45 00 45 00 00 45 00 45 00 00 00 00 45 00 00 00 45 45 00 00 45 45 00 00 45 00 45 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 00 45 00 45 45 45 00 00 45 00 00 45 00 45 45 00 00 45 45 45 00 45 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 45 00 45 45 00 45 00 00 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 45 00 00 45 00 00 00 45 00 45 00 00
*/
