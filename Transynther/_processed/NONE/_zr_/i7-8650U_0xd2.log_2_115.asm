.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x16a5d, %r14
nop
nop
cmp $963, %r13
mov (%r14), %esi
nop
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x4165, %rsi
lea addresses_normal_ht+0x4b5, %rdi
clflush (%rdi)
nop
nop
and %r8, %r8
mov $55, %rcx
rep movsl
cmp %r14, %r14
lea addresses_D_ht+0xc4d4, %rsi
lea addresses_D_ht+0x17725, %rdi
clflush (%rsi)
nop
cmp %rdx, %rdx
mov $91, %rcx
rep movsq
nop
nop
nop
nop
and $18320, %r13
lea addresses_WC_ht+0x12ab5, %r8
nop
nop
nop
nop
nop
add %rsi, %rsi
movups (%r8), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x11325, %rsi
lea addresses_D+0x10975, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $63, %rcx
rep movsw
nop
inc %r15

// Store
lea addresses_normal+0x136a5, %r12
xor $42956, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%r12)
nop
sub $33785, %r15

// Store
lea addresses_WC+0x172e1, %r9
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%r9)
sub %rdi, %rdi

// Faulty Load
lea addresses_A+0x1b25, %r12
nop
nop
nop
nop
nop
cmp $57236, %rsi
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 2}
00 00
*/
