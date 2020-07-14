.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xb232, %rsi
lea addresses_WT_ht+0x1efaa, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %rbx
mov $97, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0xb952, %rbx
clflush (%rbx)
nop
nop
xor $54979, %rbp
movb (%rbx), %r10b
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xbcf2, %rbp
cmp %r8, %r8
movb $0x61, (%rbp)
inc %r10
lea addresses_UC_ht+0x10bb2, %rsi
lea addresses_A_ht+0xecf2, %rdi
nop
nop
nop
nop
nop
add $28180, %r14
mov $20, %rcx
rep movsq
nop
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x12232, %rbx
add $58746, %r14
mov (%rbx), %rcx
nop
nop
nop
nop
nop
xor $49223, %rsi
lea addresses_WC_ht+0xe872, %r10
nop
nop
cmp $36526, %rbp
mov (%r10), %r8
nop
nop
nop
nop
nop
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x7ada, %rsi
lea addresses_D+0x3312, %rdi
nop
nop
sub %rbp, %rbp
mov $11, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_normal+0x16cc2, %rcx
nop
nop
nop
nop
nop
xor %rbp, %rbp
movb $0x51, (%rcx)
nop
dec %rcx

// Store
lea addresses_WT+0xf3b8, %rdi
clflush (%rdi)
inc %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
nop
dec %r13

// Faulty Load
mov $0x1c044e0000000232, %r9
nop
nop
and %rdi, %rdi
movb (%r9), %cl
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 1}
00
*/
