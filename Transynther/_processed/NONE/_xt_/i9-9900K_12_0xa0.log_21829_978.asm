.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1c8b0, %r9
nop
nop
nop
nop
nop
cmp $25605, %r10
mov (%r9), %r14w
nop
nop
nop
and $42220, %r11
lea addresses_UC_ht+0x16e47, %r12
cmp $49251, %rdi
mov (%r12), %r13d
nop
nop
nop
nop
nop
xor $22003, %r14
lea addresses_WT_ht+0x173e3, %r13
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
lfence
lea addresses_WT_ht+0xaad7, %r10
nop
add $21292, %rdi
mov (%r10), %r11d
nop
nop
nop
nop
dec %r13
lea addresses_normal_ht+0xa443, %rsi
lea addresses_normal_ht+0x1afb9, %rdi
nop
nop
nop
nop
dec %r10
mov $119, %rcx
rep movsb
nop
nop
nop
nop
dec %r10
lea addresses_WT_ht+0xa143, %r12
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%r12)
cmp $46435, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx

// Store
lea addresses_normal+0xb243, %rax
nop
nop
nop
cmp $993, %r8
movl $0x51525354, (%rax)
nop
nop
cmp $16359, %rbx

// Store
lea addresses_RW+0x17843, %r8
nop
nop
sub $34115, %rax
movb $0x51, (%r8)
sub %r8, %r8

// Store
lea addresses_normal+0x6a43, %r8
nop
nop
nop
inc %r14
movw $0x5152, (%r8)
nop
nop
nop
nop
dec %r13

// Store
lea addresses_PSE+0x17c73, %rbx
nop
nop
add $13504, %r13
mov $0x5152535455565758, %rax
movq %rax, (%rbx)
nop
nop
inc %r9

// Store
lea addresses_PSE+0x6443, %rbx
nop
cmp %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movntdq %xmm7, (%rbx)
nop
nop
nop
xor $60274, %r9

// Store
lea addresses_WT+0x5cc3, %rcx
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
nop
nop
nop
nop
nop
sub %r9, %r9

// Faulty Load
lea addresses_normal+0x1fc43, %r13
nop
nop
nop
nop
nop
add %r9, %r9
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': True, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
