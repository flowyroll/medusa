.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xd623, %rsi
lea addresses_normal_ht+0x15443, %rdi
nop
nop
nop
nop
nop
cmp $51430, %r12
mov $49, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0x1c8b3, %rdx
nop
nop
nop
and $39388, %r13
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1a053, %r13
xor $42203, %r12
mov (%r13), %cx
nop
nop
and $63088, %r12
lea addresses_A_ht+0x102d3, %rdx
nop
nop
nop
nop
add $1104, %r12
movb $0x61, (%rdx)
nop
nop
sub $64665, %rdi
lea addresses_UC_ht+0xb0d3, %r13
inc %rdi
mov (%r13), %rcx
xor %r12, %r12
lea addresses_D_ht+0x5d13, %rdx
nop
and %rcx, %rcx
mov (%rdx), %edi
nop
nop
nop
sub $46998, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rdi
push %rdx

// Store
mov $0xa53, %r10
nop
nop
nop
inc %r14
movw $0x5152, (%r10)
nop
xor %r11, %r11

// Store
lea addresses_PSE+0x6013, %rdx
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%rdx)
nop
nop
cmp %r9, %r9

// Load
lea addresses_PSE+0x18f53, %rbp
clflush (%rbp)
nop
nop
nop
nop
cmp $38925, %r11
mov (%rbp), %di
dec %rbp

// Faulty Load
lea addresses_UC+0x8c53, %r10
nop
nop
nop
nop
cmp $20678, %rbp
vmovntdqa (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_P', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}}
{'src': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
