.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x94d7, %r8
dec %rbp
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x1a57, %r14
nop
nop
nop
and %rsi, %rsi
movb $0x61, (%r14)
nop
and $12291, %rsi
lea addresses_WC_ht+0x12417, %rsi
lea addresses_UC_ht+0x1d0ff, %rdi
nop
nop
nop
dec %r9
mov $99, %rcx
rep movsb
nop
and $36892, %r9
lea addresses_WT_ht+0x7537, %rsi
nop
nop
nop
nop
inc %r9
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
xor $15126, %r9
lea addresses_WT_ht+0x13e57, %rcx
nop
nop
nop
sub $57299, %r9
mov (%rcx), %rsi
nop
nop
and $45250, %rcx
lea addresses_UC_ht+0x99d7, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $7278, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
and $57744, %r14
lea addresses_WC_ht+0x7b96, %rdi
nop
add %r14, %r14
mov (%rdi), %r9d
dec %rbp
lea addresses_WT_ht+0x1607f, %r10
nop
nop
sub $44276, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%r10)
cmp $62981, %rcx
lea addresses_A_ht+0x15057, %r8
nop
nop
nop
nop
cmp $34552, %rcx
movw $0x6162, (%r8)
nop
nop
nop
nop
add $504, %r10
lea addresses_A_ht+0x1ba57, %r14
nop
nop
nop
nop
cmp $45404, %rbp
movb $0x61, (%r14)
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x5e57, %rsi
clflush (%rsi)
nop
nop
nop
nop
and $58202, %r8
movb (%rsi), %r14b
nop
nop
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdx

// Store
lea addresses_D+0x1ae57, %r13
nop
nop
nop
nop
and $23268, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_WC+0x17457, %r11
nop
cmp %r10, %r10
movw $0x5152, (%r11)
nop
xor %r11, %r11

// Load
lea addresses_UC+0x83a7, %r12
clflush (%r12)
nop
add $46376, %rcx
vmovntdqa (%r12), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_PSE+0x11657, %r11
and %r12, %r12
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'33': 15}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
