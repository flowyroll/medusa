.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x17566, %rsi
lea addresses_WC_ht+0x1a066, %rdi
clflush (%rdi)
nop
nop
nop
xor %r9, %r9
mov $73, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x9832, %rsi
lea addresses_UC_ht+0x1a996, %rdi
nop
nop
add $20798, %r9
mov $75, %rcx
rep movsb
xor $40420, %rdx
lea addresses_D_ht+0x1098e, %rsi
lea addresses_D_ht+0xad86, %rdi
nop
nop
add %rbx, %rbx
mov $29, %rcx
rep movsq
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x14556, %rsi
lea addresses_D_ht+0x5666, %rdi
clflush (%rdi)
and $51697, %r10
mov $88, %rcx
rep movsq
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0xe266, %rdi
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
nop
sub $59201, %rdi
lea addresses_normal_ht+0xae66, %rsi
and %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rsi)
nop
sub $13507, %r10
lea addresses_UC_ht+0x7d46, %rsi
lea addresses_A_ht+0x19666, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $39, %rcx
rep movsb
nop
nop
inc %rsi
lea addresses_UC_ht+0x1b316, %r9
nop
and %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r9)
add $20192, %rdx
lea addresses_A_ht+0xae6, %r10
nop
nop
cmp $59673, %rdx
movl $0x61626364, (%r10)
nop
nop
nop
nop
dec %r9
lea addresses_normal_ht+0xe4ca, %r9
nop
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
and $0xffffffffffffffc0, %r9
movntdq %xmm2, (%r9)
nop
nop
nop
nop
nop
cmp $58796, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x10d96, %r11
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%r11)
nop
nop
add %rdi, %rdi

// Store
lea addresses_PSE+0x1fd12, %rax
nop
nop
cmp $30949, %r14
movw $0x5152, (%rax)
nop
nop
nop
and $33013, %rsi

// Store
lea addresses_normal+0x10e06, %r10
nop
nop
nop
nop
nop
cmp $16351, %r9
movl $0x51525354, (%r10)
dec %r9

// Store
lea addresses_WC+0x1364, %rdi
nop
cmp $39825, %rax
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_UC+0x40a6, %r10
nop
and %r14, %r14
movw $0x5152, (%r10)
nop
nop
nop
nop
cmp $63758, %r10

// REPMOV
lea addresses_RW+0xf266, %rsi
lea addresses_normal+0x1e1e6, %rdi
xor %r14, %r14
mov $101, %rcx
rep movsq
nop
nop
sub $710, %rdi

// Faulty Load
lea addresses_PSE+0x10266, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r9, %r9
movb (%rdi), %cl
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
