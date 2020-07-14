.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x18c89, %r12
nop
nop
nop
nop
lfence
movups (%r12), %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x1e3bf, %r10
nop
nop
nop
nop
cmp %rbx, %rbx
movb (%r10), %r11b
nop
and $34642, %r11
lea addresses_normal_ht+0x81af, %r9
cmp $49594, %rsi
movw $0x6162, (%r9)
inc %r10
lea addresses_A_ht+0x14897, %rsi
lea addresses_WC_ht+0x6dbf, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $47, %rcx
rep movsw
nop
add %r10, %r10
lea addresses_UC_ht+0x1d9f7, %rdi
nop
nop
nop
and $6432, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x9adf, %r12
nop
nop
xor %rbx, %rbx
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
sub $58097, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
mov $0xf0f, %rsi
lea addresses_RW+0x126bf, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $79, %rcx
rep movsl
add %rdi, %rdi

// Faulty Load
lea addresses_D+0xacbf, %r12
nop
nop
nop
cmp %r10, %r10
movb (%r12), %cl
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'36': 145}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
