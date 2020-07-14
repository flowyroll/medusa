.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x17c99, %r9
nop
nop
inc %r12
movl $0x61626364, (%r9)
sub $26835, %rbp
lea addresses_A_ht+0xd3bb, %rsi
lea addresses_WC_ht+0x4d60, %rdi
nop
nop
sub $63578, %rdx
mov $118, %rcx
rep movsl
nop
nop
nop
nop
add $15048, %rbp
lea addresses_A_ht+0xcfb, %rsi
lea addresses_D_ht+0x122dd, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $103, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x1cb4b, %rdx
nop
nop
nop
sub $53026, %rcx
mov (%rdx), %di
nop
nop
nop
cmp %r9, %r9
lea addresses_D_ht+0xd5fb, %rcx
nop
nop
add %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
sub %rcx, %rcx
lea addresses_normal_ht+0x194fb, %rcx
nop
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%rcx)
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x8bfb, %r9
nop
nop
nop
nop
nop
add %rbp, %rbp
movl $0x61626364, (%r9)
nop
sub %r12, %r12
lea addresses_WT_ht+0x1246b, %rbp
nop
nop
nop
nop
add $61271, %rdx
mov (%rbp), %r15
xor $4879, %rdx
lea addresses_A_ht+0xb077, %r15
nop
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r15)
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xe6ab, %rsi
nop
nop
nop
cmp $46862, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
nop
dec %rdx

// REPMOV
lea addresses_normal+0x2237, %rsi
lea addresses_PSE+0xf906, %rdi
and %rax, %rax
mov $3, %rcx
rep movsl
nop
nop
and %rax, %rax

// REPMOV
mov $0xa61, %rsi
lea addresses_D+0x18d6f, %rdi
nop
nop
nop
nop
nop
sub $8015, %r12
mov $80, %rcx
rep movsb
nop
nop
and %rdi, %rdi

// Store
lea addresses_RW+0x1b159, %rax
nop
nop
sub $11998, %rdx
movl $0x51525354, (%rax)
xor $63102, %rax

// Faulty Load
lea addresses_WC+0x1edfb, %rcx
add $63968, %r12
movaps (%rcx), %xmm7
vpextrq $0, %xmm7, %rdx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'00': 6}
00 00 00 00 00 00
*/
