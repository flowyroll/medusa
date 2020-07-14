.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xcf9e, %rcx
nop
nop
nop
and %r14, %r14
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x1889e, %rdx
nop
nop
nop
nop
nop
dec %r14
movw $0x6162, (%rdx)
nop
nop
nop
nop
xor $62655, %rcx
lea addresses_WT_ht+0x1321e, %rdx
nop
nop
add %r8, %r8
movl $0x61626364, (%rdx)
nop
sub %r13, %r13
lea addresses_normal_ht+0x729e, %r14
clflush (%r14)
nop
nop
nop
add $33110, %rbx
mov (%r14), %rdx
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x8cc2, %r9
nop
nop
nop
nop
cmp %r8, %r8
mov (%r9), %dx
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x1e69e, %r9
clflush (%r9)
and %rcx, %rcx
mov (%r9), %dx
nop
and $60729, %r14
lea addresses_normal_ht+0x1919e, %r8
cmp %rdx, %rdx
mov (%r8), %bx
nop
nop
nop
xor $36194, %r9
lea addresses_normal_ht+0x18176, %r14
nop
and $33500, %r9
mov (%r14), %dx
nop
nop
nop
nop
xor $8243, %rdx
lea addresses_normal_ht+0x3d3e, %rdx
nop
xor $18606, %r14
movb $0x61, (%rdx)
nop
nop
dec %rdx
lea addresses_UC_ht+0xe54e, %rbx
nop
cmp %r9, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
nop
add $5737, %rbx
lea addresses_D_ht+0x14e6a, %rsi
lea addresses_normal_ht+0x9e0e, %rdi
nop
nop
nop
nop
inc %r9
mov $2, %rcx
rep movsb
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x149e, %r9
and %rbx, %rbx
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
nop
and $47478, %rcx
lea addresses_A_ht+0xb49e, %rsi
lea addresses_WC_ht+0x259e, %rdi
clflush (%rsi)
sub %r13, %r13
mov $58, %rcx
rep movsq
nop
nop
sub $18541, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rsi

// Store
lea addresses_PSE+0x1e4f0, %r15
nop
nop
nop
nop
add $20584, %r13
movb $0x51, (%r15)
sub $44207, %rax

// Load
lea addresses_D+0x29e, %r10
nop
nop
nop
nop
sub $25344, %rbx
movb (%r10), %r15b
nop
nop
nop
nop
nop
mfence

// Load
lea addresses_A+0xd29e, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor %r12, %r12
movntdqa (%rbx), %xmm1
vpextrq $0, %xmm1, %r10
nop
nop
nop
nop
inc %r12

// Faulty Load
lea addresses_WC+0x529e, %r10
nop
nop
nop
and %r12, %r12
mov (%r10), %si
lea oracles, %rsi
and $0xff, %rsi
shlq $12, %rsi
mov (%rsi,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'00': 1}
00
*/
