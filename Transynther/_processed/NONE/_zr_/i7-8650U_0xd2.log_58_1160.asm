.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd25d, %rax
nop
nop
nop
nop
and $37380, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
sub $49344, %r12
lea addresses_WC_ht+0x18579, %rsi
lea addresses_A_ht+0x148dd, %rdi
clflush (%rsi)
nop
dec %r11
mov $38, %rcx
rep movsq
nop
nop
nop
inc %r12
lea addresses_D_ht+0x13a7d, %r8
and $28728, %rcx
mov (%r8), %rsi
xor %rdi, %rdi
lea addresses_normal_ht+0x128fd, %r12
nop
nop
dec %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
and $57679, %r8
lea addresses_WC_ht+0x65d, %rsi
lea addresses_WC_ht+0x1b540, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r9, %r9
mov $118, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x1505d, %rsi
lea addresses_WC_ht+0x188e4, %rdi
clflush (%rdi)
add $17111, %r12
mov $46, %rcx
rep movsl
nop
nop
dec %r12
lea addresses_WT_ht+0xa35d, %rsi
lea addresses_normal_ht+0x10c5d, %rdi
xor $17360, %r11
mov $106, %rcx
rep movsl
nop
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0xcb1d, %rsi
lea addresses_WC_ht+0x1a99d, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $39, %rcx
rep movsl
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x8c5d, %rsi
lea addresses_A_ht+0xc65d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r11, %r11
mov $58, %rcx
rep movsb
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x1be5d, %rax
nop
nop
nop
nop
xor $1528, %rdi
mov (%rax), %si
nop
nop
nop
mfence
lea addresses_WC_ht+0x6e5d, %r8
nop
nop
nop
and %r12, %r12
movl $0x61626364, (%r8)
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x1975d, %rsi
lea addresses_WT_ht+0x1ce5d, %rdi
clflush (%rsi)
and %rax, %rax
mov $114, %rcx
rep movsb
xor $19909, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rdx

// Store
lea addresses_RW+0xe71e, %r13
nop
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
nop
nop
sub $30518, %r13

// Faulty Load
lea addresses_A+0xbe5d, %rdx
clflush (%rdx)
nop
nop
nop
nop
and $1971, %r15
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'00': 58}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
