.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x6398, %r10
nop
nop
nop
nop
nop
xor $58380, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
cmp $15480, %r13
lea addresses_normal_ht+0x1c14, %rsi
lea addresses_UC_ht+0x1c998, %rdi
xor $6675, %rbp
mov $17, %rcx
rep movsb
nop
nop
nop
nop
nop
and $64243, %rsi
lea addresses_D_ht+0x16918, %rbx
nop
nop
nop
nop
xor $4643, %rcx
mov (%rbx), %rbp
sub $22893, %rsi
lea addresses_UC_ht+0x6d98, %rsi
lea addresses_UC_ht+0xaa98, %rdi
nop
nop
nop
and %r10, %r10
mov $18, %rcx
rep movsw
nop
add $40963, %rbp
lea addresses_A_ht+0x1b58, %rsi
lea addresses_D_ht+0x16398, %rdi
cmp %rax, %rax
mov $121, %rcx
rep movsq
nop
nop
nop
sub $44034, %rcx
lea addresses_UC_ht+0x15418, %r10
nop
nop
nop
nop
dec %rsi
movb (%r10), %bl
nop
dec %r10
lea addresses_normal_ht+0x14ac0, %rsi
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
xor $16061, %r10
lea addresses_WT_ht+0xaf98, %r13
clflush (%r13)
nop
nop
nop
nop
add %rbx, %rbx
movups (%r13), %xmm6
vpextrq $1, %xmm6, %rax
nop
cmp %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x3198, %rsi
lea addresses_UC+0x13598, %rdi
clflush (%rdi)
nop
and %r14, %r14
mov $114, %rcx
rep movsw
nop
nop
nop
and $15714, %r9

// Store
lea addresses_WC+0x36a0, %rcx
nop
nop
nop
xor $34309, %r9
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
cmp $51187, %rdi

// Faulty Load
lea addresses_US+0x15b98, %rsi
nop
nop
nop
cmp $35106, %rbp
mov (%rsi), %edi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 517}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
