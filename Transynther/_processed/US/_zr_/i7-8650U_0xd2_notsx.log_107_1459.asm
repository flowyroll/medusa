.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1b4c, %rsi
lea addresses_WT_ht+0x896c, %rdi
nop
nop
sub %rax, %rax
mov $26, %rcx
rep movsw
inc %rsi
lea addresses_UC_ht+0x394c, %rsi
lea addresses_WT_ht+0x994c, %rdi
inc %rdx
mov $55, %rcx
rep movsl
dec %rdx
lea addresses_D_ht+0xbdcc, %rbp
nop
nop
nop
nop
and %r15, %r15
movb (%rbp), %dl
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0xeb4c, %rsi
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
nop
dec %rbp
lea addresses_D_ht+0xca4c, %rbp
nop
nop
nop
xor $64395, %rax
movw $0x6162, (%rbp)
nop
nop
nop
nop
add $42946, %rax
lea addresses_D_ht+0x4ec, %rcx
nop
nop
nop
cmp %rsi, %rsi
mov (%rcx), %r15
nop
xor $38743, %rdx
lea addresses_UC_ht+0x612c, %rdi
dec %rbp
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0xf94c, %rdx
nop
cmp %r15, %r15
mov (%rdx), %esi
nop
add $37076, %rax
lea addresses_WC_ht+0xef37, %rsi
lea addresses_WC_ht+0x1c924, %rdi
add $19936, %r14
mov $42, %rcx
rep movsw
nop
nop
sub %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x1f4e2, %rbp
clflush (%rbp)
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm0
movups %xmm0, (%rbp)
nop
nop
cmp $1213, %rdi

// Faulty Load
lea addresses_US+0x1234c, %r10
and $7343, %rdx
movb (%r10), %r15b
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'00': 107}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
