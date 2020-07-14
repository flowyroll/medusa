.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x124ab, %r9
nop
nop
nop
nop
nop
cmp %r12, %r12
mov (%r9), %r8
nop
nop
nop
add $3914, %rsi
lea addresses_normal_ht+0x5a0b, %rsi
lea addresses_A_ht+0x158cb, %rdi
and $28315, %rax
mov $97, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0xf60b, %rdi
nop
nop
sub $52414, %rcx
movb $0x61, (%rdi)
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x1c64b, %rcx
nop
nop
nop
and %r8, %r8
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
dec %r9
lea addresses_UC_ht+0xbb25, %rsi
lea addresses_A_ht+0xc48, %rdi
clflush (%rsi)
dec %rbp
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x978b, %rsi
lea addresses_D_ht+0x1af0b, %rdi
nop
nop
and $56690, %rax
mov $1, %rcx
rep movsq
sub %rsi, %rsi
lea addresses_A_ht+0x4a0b, %r12
nop
nop
nop
nop
cmp %r8, %r8
movw $0x6162, (%r12)
nop
add %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x10b, %r14
nop
nop
nop
nop
nop
add %rax, %rax
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
add $54188, %rdi

// Store
lea addresses_D+0x1320b, %rcx
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rcx)
nop
nop
and $35227, %rcx

// Faulty Load
mov $0x20b, %rax
nop
nop
nop
nop
sub $54336, %rdi
mov (%rax), %r10d
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'00': 81}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
