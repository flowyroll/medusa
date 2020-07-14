.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1952f, %rsi
lea addresses_UC_ht+0x12c0f, %rdi
nop
nop
inc %r9
mov $17, %rcx
rep movsl
nop
nop
nop
nop
nop
add $45881, %r15
lea addresses_WT_ht+0xc46f, %rcx
cmp %r9, %r9
mov (%rcx), %r15w
nop
nop
nop
nop
xor $64970, %rdi
lea addresses_UC_ht+0x1bd7f, %r11
nop
cmp $57321, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
sub %r15, %r15
lea addresses_normal_ht+0x737f, %rcx
nop
nop
nop
xor $57087, %r15
mov (%rcx), %rsi
nop
inc %r9
lea addresses_A_ht+0x618, %rdi
nop
nop
nop
nop
xor $12467, %r9
movb $0x61, (%rdi)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0xe61f, %rsi
lea addresses_normal_ht+0x15a14, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $23, %rcx
rep movsb
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0xb6df, %rsi
lea addresses_A_ht+0x1c8ef, %rdi
nop
add $52043, %rbp
mov $124, %rcx
rep movsq
and %r14, %r14
lea addresses_D_ht+0x14107, %rsi
and $62270, %rcx
movb $0x61, (%rsi)
nop
sub $14062, %r15
lea addresses_normal_ht+0x217f, %rsi
lea addresses_WC_ht+0x1817f, %rdi
nop
and %rbp, %rbp
mov $79, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x48ff, %r15
nop
nop
nop
nop
cmp $37789, %rcx
mov (%r15), %rsi
nop
nop
nop
nop
add $5031, %rsi
lea addresses_A_ht+0xf2ff, %rsi
lea addresses_UC_ht+0x1913f, %rdi
nop
nop
nop
dec %r9
mov $83, %rcx
rep movsq
xor $25162, %r9
lea addresses_normal_ht+0x42ff, %rsi
lea addresses_UC_ht+0x1963f, %rdi
add $46870, %r14
mov $10, %rcx
rep movsb
nop
inc %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbx
push %rdi
push %rsi

// Store
lea addresses_RW+0x4d7f, %rbx
nop
dec %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
and $42523, %rsi

// Faulty Load
lea addresses_A+0x97f, %r10
nop
nop
sub %rbx, %rbx
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rsi
pop %rdi
pop %rbx
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}}
{'44': 160, '00': 1375, '45': 13}
44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 44 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 45 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 00 00 00 45 00 00 44 44 44 44 00 00 00 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 44 44 00 00 00 00 44 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 45 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 45 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 44 00 44 44 00 00 00 00 44 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 44 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00
*/
