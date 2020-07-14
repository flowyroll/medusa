.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1c8b3, %rsi
lea addresses_WC_ht+0x16eb3, %rdi
nop
nop
nop
xor $54717, %r14
mov $84, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $45437, %r14
lea addresses_A_ht+0x16b3, %rsi
lea addresses_WT_ht+0x55b3, %rdi
nop
cmp %rbp, %rbp
mov $59, %rcx
rep movsb
nop
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %r9
push %rdx

// Load
lea addresses_normal+0x1275f, %r14
nop
add %r15, %r15
movntdqa (%r14), %xmm6
vpextrq $0, %xmm6, %rdx
dec %r15

// Store
lea addresses_D+0x15713, %r8
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r14
movq %r14, (%r8)
nop
add %r14, %r14

// Store
lea addresses_UC+0x1c5b3, %r8
nop
nop
nop
nop
add $36806, %rdx
movb $0x51, (%r8)
nop
nop
nop
nop
cmp %r14, %r14

// Load
lea addresses_UC+0x3cb3, %r10
nop
add %r13, %r13
mov (%r10), %edx
nop
nop
nop
and %r14, %r14

// Faulty Load
lea addresses_D+0x1d4b3, %r15
nop
nop
sub $32145, %r9
mov (%r15), %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rdx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'36': 22}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
