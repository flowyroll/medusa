.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x24bc, %r14
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rbp
movq %rbp, (%r14)
nop
xor $27567, %r14
lea addresses_UC_ht+0xf25c, %r12
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%r12)
nop
nop
nop
nop
nop
cmp $45909, %r12
lea addresses_WC_ht+0x17a6f, %rsi
lea addresses_D_ht+0x679c, %rdi
clflush (%rdi)
nop
nop
nop
cmp $42419, %r14
mov $96, %rcx
rep movsw
nop
nop
nop
nop
add $48951, %rsi
lea addresses_WT_ht+0x239c, %r9
cmp %rdx, %rdx
movups (%r9), %xmm4
vpextrq $0, %xmm4, %rbp
nop
sub $2131, %r12
lea addresses_D_ht+0x171f0, %rsi
lea addresses_normal_ht+0xb9c, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $50, %rcx
rep movsq
sub %r9, %r9
lea addresses_UC_ht+0x561c, %rsi
lea addresses_A_ht+0x1641a, %rdi
sub $33745, %rbp
mov $93, %rcx
rep movsw
nop
nop
xor $52268, %r12
lea addresses_normal_ht+0x1729c, %r12
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x8b9c, %rbp
nop
nop
nop
nop
nop
dec %rdx
mov (%rbp), %esi
nop
nop
nop
cmp $21032, %rsi
lea addresses_WT_ht+0x8f9c, %rsi
lea addresses_UC_ht+0x122dc, %rdi
nop
nop
xor %r9, %r9
mov $44, %rcx
rep movsq
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0x1d47c, %r14
nop
nop
cmp $25467, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
nop
sub $41564, %r12
lea addresses_A_ht+0x2d9c, %rsi
lea addresses_normal_ht+0x659c, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $92, %rcx
rep movsw
nop
sub $19029, %rsi
lea addresses_UC_ht+0x1699c, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r14, %r14
movb (%rdi), %dl
nop
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdx

// Load
lea addresses_WT+0x1efb6, %rdx
nop
nop
nop
nop
nop
cmp %r8, %r8
mov (%rdx), %r12
nop
cmp %r8, %r8

// Faulty Load
lea addresses_normal+0xf9c, %r8
clflush (%r8)
nop
nop
and $58705, %rbp
mov (%r8), %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'34': 77}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
