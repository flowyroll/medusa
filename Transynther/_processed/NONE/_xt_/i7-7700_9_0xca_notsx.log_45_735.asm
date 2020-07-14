.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rdx
lea addresses_WT_ht+0x1021d, %r11
nop
sub %rdx, %rdx
movb (%r11), %r9b
nop
and %rdi, %rdi
lea addresses_D_ht+0x60fd, %r11
nop
nop
nop
nop
nop
sub $47187, %rax
mov (%r11), %r15w
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x17c1d, %r9
nop
nop
add %rdx, %rdx
mov (%r9), %rdi
nop
nop
nop
and %r11, %r11
lea addresses_UC_ht+0x1caab, %rdx
nop
nop
cmp %rbp, %rbp
movw $0x6162, (%rdx)
nop
nop
and $10488, %rdi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rsi

// Store
mov $0x321, %r10
nop
nop
xor $28523, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r10)
nop
nop
add %rcx, %rcx

// Store
lea addresses_RW+0x101dd, %r9
nop
nop
xor $36648, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
add %r9, %r9

// Load
mov $0x214ec2000000001d, %r10
nop
nop
nop
nop
nop
and %rbx, %rbx
movups (%r10), %xmm0
vpextrq $1, %xmm0, %rsi
nop
add %rbx, %rbx

// Load
lea addresses_PSE+0x8c1d, %r8
nop
nop
nop
dec %r9
mov (%r8), %r12w
sub $40503, %r8

// Faulty Load
lea addresses_PSE+0x3e1d, %rcx
nop
nop
nop
nop
nop
add %rbx, %rbx
movb (%rcx), %r9b
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'33': 45}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
