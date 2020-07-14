.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xf1a, %rbx
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x1bd42, %rsi
lea addresses_UC_ht+0x5312, %rdi
cmp %r10, %r10
mov $52, %rcx
rep movsb
nop
nop
xor $60774, %rdi
lea addresses_WT_ht+0x16bb2, %rsi
lea addresses_WT_ht+0x6cf2, %rdi
nop
sub $44633, %r13
mov $19, %rcx
rep movsq
nop
nop
nop
nop
nop
add $18985, %rcx
lea addresses_normal_ht+0x17b2a, %r13
nop
nop
nop
add $5818, %r8
mov (%r13), %r10d
add $11914, %r10
lea addresses_UC_ht+0x4ae7, %rsi
lea addresses_A_ht+0xf672, %rdi
nop
nop
inc %r13
mov $80, %rcx
rep movsq
cmp %rdi, %rdi
lea addresses_normal_ht+0xab3a, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
xor $29693, %r8
lea addresses_UC_ht+0x16746, %r13
xor $11716, %rcx
movb $0x61, (%r13)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0xb913, %rdi
xor $249, %rbx
mov (%rdi), %r13d
nop
dec %rsi
lea addresses_UC_ht+0xb572, %r8
clflush (%r8)
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%r8)
nop
xor $30607, %r10
lea addresses_UC_ht+0x1c6e1, %r8
nop
nop
nop
xor $25627, %rsi
movb (%r8), %r13b
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x11882, %rsi
lea addresses_UC_ht+0x93b2, %rdi
cmp %rbp, %rbp
mov $84, %rcx
rep movsl
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x1bb82, %r13
nop
and $26854, %rcx
movups (%r13), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xb5fa, %rcx
nop
sub $19194, %r8
mov (%rcx), %si
nop
nop
nop
and $16941, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rbx
push %rdi
push %rsi

// Load
lea addresses_US+0x7f06, %rbx
nop
nop
nop
xor %rsi, %rsi
vmovntdqa (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
xor %rbx, %rbx

// Store
lea addresses_PSE+0x5870, %r15
clflush (%r15)
nop
nop
nop
nop
cmp $49781, %r11
movl $0x51525354, (%r15)
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_WT+0x63b2, %rbx
nop
nop
nop
nop
add %rdi, %rdi
mov (%rbx), %r12w
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 134}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
