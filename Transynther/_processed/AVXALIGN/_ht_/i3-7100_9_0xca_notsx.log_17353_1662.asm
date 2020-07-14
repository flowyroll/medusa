.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1cf94, %rbp
nop
nop
nop
nop
add $16286, %r11
mov $0x6162636465666768, %r14
movq %r14, (%rbp)
nop
nop
nop
nop
xor $13521, %rdi
lea addresses_UC_ht+0x18e0a, %r8
sub $11810, %rdi
mov (%r8), %ebp
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x652, %rsi
lea addresses_D_ht+0x5a2, %rdi
nop
nop
nop
nop
cmp $43419, %r13
mov $127, %rcx
rep movsw
nop
nop
nop
and $23752, %rsi
lea addresses_D_ht+0x1c0ff, %r13
nop
nop
nop
sub %rbp, %rbp
movl $0x61626364, (%r13)
nop
cmp $27144, %rsi
lea addresses_UC_ht+0x1a79c, %r14
nop
nop
nop
nop
inc %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r14)
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x14852, %rsi
lea addresses_D_ht+0x17a1f, %rdi
nop
xor $2870, %rbp
mov $10, %rcx
rep movsw
nop
sub $14811, %r8
lea addresses_WT_ht+0x17852, %r13
nop
xor $17513, %rdi
mov (%r13), %r11w
nop
nop
sub $12686, %rcx
lea addresses_normal_ht+0xde52, %r11
nop
nop
nop
nop
nop
dec %rcx
movb (%r11), %r13b
nop
cmp $46812, %r11
lea addresses_normal_ht+0x2f52, %rdi
sub $37376, %r13
movw $0x6162, (%rdi)
cmp %rdi, %rdi
lea addresses_WT_ht+0x13862, %rcx
nop
nop
nop
nop
nop
sub $26107, %r14
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x6fb6, %rsi
lea addresses_A_ht+0xa4fc, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $90, %rcx
rep movsw
dec %rdi
lea addresses_WT_ht+0x9252, %rsi
lea addresses_A_ht+0x1e852, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $49194, %r13
mov $117, %rcx
rep movsw
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x1da52, %rsi
nop
add %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rsi)
nop
nop
xor $56368, %r14
lea addresses_UC_ht+0xe052, %rbp
nop
nop
cmp %r11, %r11
movb (%rbp), %r13b
nop
nop
and %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rcx
push %rdi
push %rdx

// Faulty Load
mov $0x852, %r15
nop
nop
nop
cmp %r9, %r9
vmovntdqa (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'44': 397, '46': 2966, '49': 13990}
49 46 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 44 46 46 49 49 49 46 46 49 49 49 46 49 49 49 49 49 49 49 49 46 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 46 49 49 46 46 49 49 49 46 49 49 46 46 46 49 49 49 49 49 46 49 49 46 49 46 49 49 46 49 46 44 46 49 49 46 49 49 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 46 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 46 49 49 49 49 49 46 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 46 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 46 49 49 46 49 49 49 49 46 49 49 49 44 49 44 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 49 49 46 49 46 49 49 49 49 49 49 46 49 49 49 49 46 46 49 49 46 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 46 46 46 49 49 49 49 46 49 49 46 49 49 49 46 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 49 49 46 49 49 44 49 46 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 46 46 49 49 46 46 46 49 49 49 49 49 49 49 49 49 46 49 49 49 44 49 49 49 46 49 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 46 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 46 49 49 46 44 49 46 49 49 46 44 49 49 46 49 46 46 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 46 46 46 46 46 46 46 46 49 49 49 49 46 46 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 44 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 46 49 46 49 44 49 49 49 49 49 44 44 49 46 44 49 46 46 46 46 44 49 46 49 49 49 44 44 49 46 49 46 46 46 49 46 46 46 49 49 44 49 49 49 49 49 46 46 49 44 44 44 44 49 49 46 49 44 46 46 44 46 46 46 46 46 44 49 49 49 46 46 49 46 44 49 49 46 46 49 46 49 49 46 49 44 44 49 49 46 49 46 44 49 49 49 49 46 46 49 49 46 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46
*/
