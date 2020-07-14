.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x5c78, %rsi
lea addresses_WC_ht+0xf2fd, %rdi
nop
nop
sub %rbx, %rbx
mov $48, %rcx
rep movsq
nop
inc %r14
lea addresses_D_ht+0x1657d, %r13
nop
nop
nop
nop
inc %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r13)
nop
nop
nop
inc %rax
lea addresses_UC_ht+0xb57d, %rsi
lea addresses_A_ht+0x717d, %rdi
inc %r12
mov $16, %rcx
rep movsw
nop
dec %rcx
lea addresses_D_ht+0x1c57d, %rdi
nop
xor $56637, %r13
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
sub $19764, %rdi
lea addresses_normal_ht+0x767d, %rbx
nop
add %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x197d, %rsi
lea addresses_D_ht+0x81fd, %rdi
clflush (%rdi)
nop
nop
add %rbx, %rbx
mov $29, %rcx
rep movsw
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x17d, %rbx
add $20020, %r12
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
and $30557, %r13
lea addresses_normal_ht+0x1d57d, %rdi
nop
nop
nop
nop
add $19361, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
sub %rdi, %rdi
lea addresses_A_ht+0x777d, %rdi
cmp $45807, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
cmp $13148, %r12
lea addresses_D_ht+0x114fd, %rsi
lea addresses_WC_ht+0x1193e, %rdi
xor $19752, %r13
mov $123, %rcx
rep movsq
nop
add $59649, %r13
lea addresses_UC_ht+0x4e2d, %rsi
lea addresses_UC_ht+0x5b7d, %rdi
nop
nop
cmp $45810, %r14
mov $47, %rcx
rep movsw
add $45170, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x1dd7d, %rsi
lea addresses_UC+0x8bdd, %rdi
clflush (%rdi)
nop
nop
nop
inc %r9
mov $2, %rcx
rep movsw
nop
nop
nop
and $37165, %r9

// Store
mov $0x7dd, %r12
nop
xor %r14, %r14
movl $0x51525354, (%r12)
nop
nop
and %rcx, %rcx

// Load
mov $0x7a38480000000cad, %r12
nop
nop
nop
nop
add $10771, %r9
movups (%r12), %xmm4
vpextrq $1, %xmm4, %r14
nop
nop
cmp $1162, %r8

// Faulty Load
lea addresses_A+0x9d7d, %r14
clflush (%r14)
nop
nop
nop
nop
inc %rcx
mov (%r14), %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}}
{'00': 102}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
