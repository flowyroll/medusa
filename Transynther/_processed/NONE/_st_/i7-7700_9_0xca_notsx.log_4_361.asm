.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x9530, %rdi
clflush (%rdi)
cmp %r12, %r12
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
sub $38288, %rdi
lea addresses_A_ht+0xd303, %rsi
lea addresses_WC_ht+0xf1e5, %rdi
cmp $40015, %rbx
mov $59, %rcx
rep movsl
nop
dec %rdi
lea addresses_WT_ht+0x11a23, %rsi
nop
nop
nop
nop
nop
dec %r15
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
sub $31194, %rdi
lea addresses_A_ht+0x110f3, %rdi
xor $31447, %rcx
movb (%rdi), %r12b
nop
inc %rdi
lea addresses_normal_ht+0x1a403, %rcx
clflush (%rcx)
nop
nop
lfence
movw $0x6162, (%rcx)
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x1d0b, %rsi
lea addresses_D_ht+0x17a03, %rdi
clflush (%rsi)
nop
add $32098, %rbp
mov $2, %rcx
rep movsb
nop
add $24873, %rbx
lea addresses_A_ht+0x1c867, %rsi
lea addresses_WT_ht+0x10c03, %rdi
nop
nop
nop
add $11185, %rbx
mov $86, %rcx
rep movsb
nop
nop
nop
add $24766, %rbp
lea addresses_A_ht+0x6547, %rbx
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov (%rbx), %r15d
nop
nop
nop
nop
nop
cmp $6090, %r15
lea addresses_WT_ht+0x18d03, %rbp
clflush (%rbp)
nop
nop
nop
nop
add $23033, %r15
mov (%rbp), %rsi
nop
nop
nop
nop
nop
add $54882, %r15
lea addresses_D_ht+0x293b, %r14
clflush (%r14)
and $46011, %rbp
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0xe78f, %rdi
and $53006, %r14
movb (%rdi), %cl
nop
nop
and $39310, %r14
lea addresses_WT_ht+0x19803, %r15
nop
and $54717, %rbx
movb $0x61, (%r15)
add $48082, %rcx
lea addresses_UC_ht+0x5503, %rdi
nop
nop
nop
xor %rsi, %rsi
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
cmp $62234, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_UC+0x11803, %r10
nop
nop
cmp $870, %rbp
mov $0x5152535455565758, %r15
movq %r15, (%r10)
nop
nop
inc %rbx

// Store
lea addresses_WC+0x1c803, %rcx
nop
nop
dec %r14
movw $0x5152, (%rcx)
nop
add %rcx, %rcx

// Store
mov $0x4800ed0000000c8b, %r14
nop
nop
nop
cmp %r10, %r10
movl $0x51525354, (%r14)
nop
cmp $57447, %r10

// Load
lea addresses_US+0x12003, %r14
clflush (%r14)
nop
nop
nop
nop
and %rcx, %rcx
movups (%r14), %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
nop
xor $8828, %r10

// Store
lea addresses_PSE+0x6103, %rbx
nop
nop
nop
nop
xor %r14, %r14
movw $0x5152, (%rbx)
nop
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_A+0x17803, %rbp
nop
nop
xor %rdx, %rdx
mov (%rbp), %ecx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'52': 4}
52 52 52 52
*/
