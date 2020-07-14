.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x14cf6, %rsi
lea addresses_WT_ht+0x1b8f6, %rdi
nop
add $2616, %r13
mov $22, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $26739, %r8
lea addresses_WT_ht+0x7616, %r9
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r9)
mfence
lea addresses_UC_ht+0x13056, %rdi
nop
nop
add $13578, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
nop
dec %r8
lea addresses_A_ht+0x6a36, %r15
nop
nop
nop
nop
nop
inc %r13
movb (%r15), %r8b
nop
add $58920, %r8
lea addresses_normal_ht+0x19756, %rsi
lea addresses_A_ht+0x13dd6, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $25, %rcx
rep movsq
nop
nop
sub $63932, %r13
lea addresses_WC_ht+0x1cfb2, %r15
nop
nop
nop
and $3686, %rdi
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0x1acf6, %r13
nop
nop
nop
sub $39294, %rsi
mov (%r13), %eax
cmp %rdi, %rdi
lea addresses_UC_ht+0x45f6, %r15
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
and %rdi, %rdi
lea addresses_normal_ht+0xaef4, %rsi
lea addresses_WT_ht+0x1db76, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $104, %rcx
rep movsb
nop
nop
and $6248, %r8
lea addresses_A_ht+0x1c386, %r13
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %r15
movq %r15, (%r13)
inc %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Load
lea addresses_RW+0x10a36, %rax
nop
nop
nop
nop
nop
add %r8, %r8
movups (%rax), %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
nop
nop
and $52974, %rcx

// Store
lea addresses_D+0x1a8f6, %r8
nop
and $37058, %rsi
movl $0x51525354, (%r8)
and %r11, %r11

// Faulty Load
mov $0x8f6, %rax
nop
nop
nop
and %r11, %r11
movups (%rax), %xmm4
vpextrq $1, %xmm4, %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 50}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
