.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1060, %rsi
lea addresses_WT_ht+0x18660, %rdi
nop
nop
nop
nop
sub $15506, %r12
mov $58, %rcx
rep movsw
nop
nop
nop
add $59232, %r8
lea addresses_A_ht+0x10080, %rsi
lea addresses_UC_ht+0x3860, %rdi
nop
nop
nop
nop
nop
and $58457, %r15
mov $60, %rcx
rep movsq
nop
nop
nop
mfence
lea addresses_WC_ht+0x86e0, %rsi
lea addresses_A_ht+0x18aa0, %rdi
and $64940, %r13
mov $9, %rcx
rep movsl
nop
dec %rdi
lea addresses_WT_ht+0x17260, %r8
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r12
movq %r12, (%r8)
nop
nop
nop
nop
nop
cmp $14311, %rsi
lea addresses_WC_ht+0x17c70, %rdi
nop
nop
nop
nop
nop
and $16726, %r13
movl $0x61626364, (%rdi)
sub %r8, %r8
lea addresses_D_ht+0xa288, %rdi
nop
cmp $16910, %r15
movb (%rdi), %r13b
nop
inc %r15
lea addresses_WT_ht+0x15908, %r8
nop
nop
nop
nop
and $62626, %rsi
and $0xffffffffffffffc0, %r8
vmovntdqa (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x4960, %r15
nop
xor %r12, %r12
mov (%r15), %di
sub $13463, %r12
lea addresses_WT_ht+0x17060, %r12
nop
nop
nop
nop
cmp $26300, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r12)
nop
cmp %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r8
push %rsi

// Load
lea addresses_RW+0xbd60, %rsi
nop
nop
nop
nop
nop
lfence
mov (%rsi), %r15
nop
nop
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_A+0x18060, %r13
xor %r10, %r10
mov (%r13), %r11d
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rsi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'00': 2}
00 00
*/
