.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xb23d, %rsi
lea addresses_A_ht+0x556f, %rdi
clflush (%rdi)
nop
xor $42123, %rdx
mov $40, %rcx
rep movsq
nop
nop
nop
nop
nop
add $58714, %r14
lea addresses_WT_ht+0x16085, %rdx
nop
and $1763, %r10
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x13e15, %rdx
nop
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x1df31, %rsi
lea addresses_D_ht+0x733b, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $19, %rcx
rep movsb
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x5e3b, %rdx
nop
nop
nop
xor $10824, %r15
mov (%rdx), %r10w
nop
and %rdi, %rdi
lea addresses_WT_ht+0x9a3b, %r11
nop
nop
sub $53227, %rcx
mov (%r11), %r14d
nop
nop
nop
nop
nop
sub $65066, %rdx
lea addresses_WC_ht+0x303b, %rsi
lea addresses_WC_ht+0x1693b, %rdi
nop
nop
nop
add %r10, %r10
mov $56, %rcx
rep movsb
nop
nop
nop
add $46815, %r10
lea addresses_A_ht+0x1a7fb, %rdi
nop
nop
nop
nop
nop
cmp $39124, %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
add $33542, %rsi
lea addresses_WC_ht+0x1ef99, %rsi
cmp %rcx, %rcx
mov (%rsi), %r15d
nop
nop
nop
lfence
lea addresses_WT_ht+0x4f3b, %r11
nop
nop
nop
nop
add %rdi, %rdi
movw $0x6162, (%r11)
cmp %r15, %r15
lea addresses_D_ht+0x72bb, %rsi
lea addresses_A_ht+0x1da3b, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $5, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x1e58c, %rsi
lea addresses_WT_ht+0x17b63, %rdi
xor $64558, %r14
mov $58, %rcx
rep movsb
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1193b, %r10
nop
nop
nop
inc %rsi
movl $0x61626364, (%r10)
nop
nop
nop
nop
cmp $53445, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rcx

// Store
lea addresses_normal+0xc23b, %r13
nop
cmp $285, %rcx
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
xor $45738, %r8

// Faulty Load
lea addresses_A+0xda3b, %r9
nop
nop
nop
and %r8, %r8
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'44': 490, '00': 81}
44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 00 00 44 44 44 44 44 44 44 44 00 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 00 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 00 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 00 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 00 44 44 00 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 00 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 00 44 44 44 44 44 44 00 44 00 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 00 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44
*/
