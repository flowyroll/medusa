.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1db00, %rsi
lea addresses_WC_ht+0xe02f, %rdi
nop
inc %r9
mov $6, %rcx
rep movsb
nop
and $33621, %r15
lea addresses_D_ht+0x4083, %rdx
nop
nop
nop
nop
nop
xor $41538, %r12
mov (%rdx), %ecx
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x7c83, %rsi
nop
nop
xor %r15, %r15
mov (%rsi), %r12
add %r15, %r15
lea addresses_WC_ht+0x6483, %rdi
nop
nop
nop
nop
cmp $5462, %r12
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm7
vpextrq $0, %xmm7, %rcx
inc %r12
lea addresses_UC_ht+0xd5c3, %rdi
nop
xor %rcx, %rcx
movb $0x61, (%rdi)
nop
nop
inc %rdi
lea addresses_D_ht+0x16e83, %rsi
lea addresses_WT_ht+0xbec3, %rdi
nop
xor %rax, %rax
mov $86, %rcx
rep movsb
nop
and $12824, %r12
lea addresses_normal_ht+0xc383, %rdi
inc %rax
movl $0x61626364, (%rdi)
nop
nop
nop
xor $53675, %rax
lea addresses_D_ht+0x7313, %rsi
lea addresses_D_ht+0xd83, %rdi
inc %rax
mov $56, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xa403, %r15
nop
nop
nop
nop
nop
add $57065, %rax
movb $0x61, (%r15)
nop
nop
nop
add $29737, %r9
lea addresses_WC_ht+0x9409, %rsi
lea addresses_A_ht+0x3723, %rdi
nop
nop
nop
nop
nop
and $773, %r9
mov $69, %rcx
rep movsb
nop
nop
cmp $42999, %r15
lea addresses_normal_ht+0x1d583, %rdx
nop
nop
nop
sub %r9, %r9
movb $0x61, (%rdx)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x18883, %rdi
nop
nop
and %rsi, %rsi
movb (%rdi), %r12b
nop
sub %r15, %r15
lea addresses_UC_ht+0x1c4cb, %rsi
lea addresses_A_ht+0xb483, %rdi
nop
nop
nop
nop
cmp %r9, %r9
mov $70, %rcx
rep movsw
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x5594, %rsi
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
sub $36787, %rdx

// Store
lea addresses_UC+0x1b883, %r15
clflush (%r15)
nop
and $52724, %rsi
movb $0x51, (%r15)
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_UC+0x11745, %rbx
dec %r10
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
add $31262, %rdi

// Store
lea addresses_UC+0x1b883, %rdi
nop
nop
nop
inc %rbx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
add $4913, %rdx

// Faulty Load
lea addresses_UC+0x1b883, %r15
nop
nop
nop
nop
sub $13323, %rbx
movb (%r15), %r10b
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'52': 56}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
