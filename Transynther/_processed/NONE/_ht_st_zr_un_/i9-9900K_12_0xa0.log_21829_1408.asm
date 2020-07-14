.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1db3, %r10
sub $39992, %rbx
movb (%r10), %r15b
cmp $19166, %rsi
lea addresses_UC_ht+0x701, %rbp
nop
nop
nop
nop
nop
sub $45388, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%rbp)
nop
nop
and $42014, %r10
lea addresses_UC_ht+0x1c6b3, %rsi
lea addresses_normal_ht+0x144a1, %rdi
nop
nop
add $29951, %r10
mov $75, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $882, %r15
lea addresses_D_ht+0x1aef3, %r14
clflush (%r14)
nop
nop
nop
xor $56412, %rbp
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xfd33, %r14
nop
nop
nop
nop
nop
sub %r15, %r15
vmovups (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x3673, %rsi
lea addresses_WC_ht+0x1760, %rdi
nop
nop
and $53535, %rbx
mov $4, %rcx
rep movsb
and %rbp, %rbp
lea addresses_WT_ht+0xb763, %rsi
lea addresses_WC_ht+0x7ccf, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $89, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0xb9b3, %rdi
sub $41801, %rbx
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
sub $4419, %r14
lea addresses_WC_ht+0x15d0f, %rsi
lea addresses_normal_ht+0x169b3, %rdi
nop
nop
nop
nop
sub $41951, %r15
mov $29, %rcx
rep movsq
cmp $13408, %r14
lea addresses_WC_ht+0x17bc3, %r10
nop
nop
nop
nop
nop
xor %r15, %r15
mov (%r10), %esi
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x149d3, %rsi
nop
nop
and $58866, %r14
mov (%rsi), %rbx
sub $13926, %rsi
lea addresses_D_ht+0x6fb3, %rsi
lea addresses_UC_ht+0xd5b3, %rdi
clflush (%rsi)
nop
nop
nop
mfence
mov $78, %rcx
rep movsb
nop
add %rcx, %rcx
lea addresses_normal_ht+0x85b3, %r14
nop
nop
and %r10, %r10
mov (%r14), %rdi
nop
nop
nop
nop
add $38654, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_A+0xfaab, %r12
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
dec %r15

// Store
mov $0xe9f, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%rdi)
xor $31803, %rdi

// Load
lea addresses_normal+0xd5bb, %r12
nop
nop
nop
nop
inc %rdi
movb (%r12), %r13b
nop
nop
nop
nop
add $4989, %rbx

// Store
mov $0xadc, %rdx
nop
nop
nop
nop
add $17383, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
and $27455, %rdx

// Faulty Load
lea addresses_A+0x161b3, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'44': 3895, '46': 12723, '49': 192, '54': 1, '00': 2319, '48': 2696, '08': 3}
00 46 46 46 46 48 44 46 46 46 48 44 44 46 46 48 44 46 46 46 00 44 00 46 46 00 44 46 46 46 48 44 46 46 46 46 00 44 46 46 46 48 44 46 46 46 48 44 46 46 46 46 00 46 46 46 48 44 44 46 46 46 00 44 46 00 46 46 44 46 46 46 46 48 44 00 46 46 48 44 46 46 46 46 44 46 46 48 44 46 46 00 48 44 46 46 48 44 46 46 46 46 00 44 46 46 48 44 44 46 46 46 44 46 46 46 48 44 44 46 46 46 49 46 00 46 48 44 46 46 48 00 44 46 46 46 46 46 46 46 46 48 44 46 46 46 00 44 46 00 46 46 44 46 46 46 48 44 46 46 46 46 44 46 46 46 48 44 46 46 46 48 00 00 46 46 46 48 44 00 00 46 48 44 46 46 46 46 49 00 46 46 48 44 46 46 46 44 46 46 46 46 48 46 46 46 48 44 46 46 46 00 46 46 46 46 48 44 46 46 46 46 00 44 00 46 46 48 44 00 46 46 48 46 46 46 46 00 44 46 46 46 48 44 46 46 46 46 00 44 00 46 46 48 44 46 46 46 48 44 46 46 46 46 00 44 46 46 46 00 44 46 46 00 46 48 44 46 46 00 44 46 46 46 46 00 44 46 48 44 46 46 00 48 44 46 00 46 48 44 46 46 46 46 00 44 46 46 46 46 00 44 46 46 46 48 44 46 46 46 48 44 46 46 46 48 44 46 46 46 46 48 44 46 46 48 44 46 00 46 46 00 46 46 46 48 44 46 46 46 48 44 46 46 46 48 44 46 46 46 48 44 44 00 46 44 44 46 46 46 48 44 46 46 46 48 46 46 46 46 00 44 00 46 46 48 44 46 46 46 46 46 46 46 46 48 44 46 46 48 44 46 46 46 00 49 46 46 46 46 48 44 46 46 48 44 46 46 46 46 44 00 46 48 44 46 46 46 46 49 46 46 46 48 44 46 46 46 46 00 44 00 46 46 48 44 46 46 46 48 00 46 46 46 46 00 44 46 46 46 46 00 44 00 46 46 44 00 46 46 48 44 46 46 46 48 44 46 46 46 46 00 00 46 46 46 46 00 44 46 46 46 48 44 46 46 00 48 44 46 46 46 46 44 00 46 48 44 46 46 46 48 00 46 46 46 48 44 44 46 48 00 46 46 46 46 46 44 46 46 46 48 44 00 46 46 46 00 44 46 46 46 46 00 44 46 46 46 48 44 46 46 46 48 44 46 46 46 48 44 46 46 48 44 46 46 46 46 46 46 46 48 44 46 46 46 46 00 44 46 46 46 46 49 46 46 46 48 44 00 00 46 46 48 44 46 46 46 00 46 44 46 46 46 48 44 46 46 48 44 46 00 46 46 00 00 46 46 46 48 44 46 46 46 48 44 46 00 46 48 44 46 46 46 48 44 46 46 48 00 44 46 46 00 48 44 00 46 48 44 46 46 46 46 46 46 46 48 00 46 00 46 46 48 44 46 46 00 46 00 44 46 46 46 48 44 46 46 48 44 46 46 46 46 44 46 46 46 48 44 46 46 00 46 48 44 46 46 46 48 44 46 46 46 48 44 00 46 46 46 00 44 46 46 46 46 00 44 00 46 46 48 44 46 46 46 48 44 46 46 46 46 00 44 00 46 46 46 48 44 46 46 46 48 44 46 46 46 46 48 44 46 46 46 48 44 46 46 46 48 44 46 46 46 46 48 44 46 00 46 48 44 46 46 46 48 44 46 46 46 00 00 44 46 46 46 46 00 44 46 46 46 48 44 46 46 48 00 46 46 46 48 44 46 46 46 00 44 00 46 48 00 44 46 46 46 46 44 46 46 46 48 44 46 46 46 46 00 44 46 46 46 48 44 46 46 48 44 46 00 46 48 00 46 46 46 00 48 44 46 46 46 48 44 46 46 46 00 44 46 46 46 48 44 46 46 46 48 44 46 46 46 00 00 46 46 46 48 44 46 46 00 44 46 46 46 48 44 46 46 46 48 44 46 46 46 46 00 44 00 46 46 46 44 46 46 46 48 44 46 46 46 48 44 46 46 00 48 48 44 46 46 46 46 48 00 46 46 46 48 44 46 46 46 46 00 44 46 46 46 46 44 46 46 46 48 48 44 46 46 46 48 44 46 46 46 46 00 44 46 46 46 48 44 00 46 46 48 00 46 46 46 46 00 44 46 46 46 48 44 00 46 46 00 44 46 46 46 46 49 46 46 00 48 44 46 46 48 44 46
*/
