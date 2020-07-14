.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16f1b, %r14
nop
sub %r9, %r9
movl $0x61626364, (%r14)
nop
xor %r13, %r13
lea addresses_WT_ht+0x15943, %rsi
lea addresses_WT_ht+0x19143, %rdi
nop
nop
nop
nop
and $40724, %r15
mov $6, %rcx
rep movsw
nop
sub $60053, %r15
lea addresses_WC_ht+0x188d3, %rsi
lea addresses_UC_ht+0x19a3f, %rdi
nop
nop
nop
nop
add $50078, %r14
mov $36, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r13
lea addresses_normal_ht+0x7a43, %r9
nop
nop
nop
nop
nop
cmp $28173, %r15
movups (%r9), %xmm1
vpextrq $0, %xmm1, %rsi
add $31793, %rdi
lea addresses_normal_ht+0x13943, %r13
nop
nop
sub %rcx, %rcx
movups (%r13), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
lfence
lea addresses_A_ht+0xb143, %rsi
lea addresses_normal_ht+0x16993, %rdi
nop
nop
nop
xor %r15, %r15
mov $109, %rcx
rep movsl
and %r14, %r14
lea addresses_UC_ht+0xb343, %r9
nop
and $57517, %rdi
movb $0x61, (%r9)
nop
nop
dec %r9
lea addresses_UC_ht+0x1ad03, %r13
nop
nop
and %rdi, %rdi
mov (%r13), %rsi
nop
nop
nop
inc %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdx

// Store
mov $0x1816d70000000c63, %rcx
nop
nop
nop
nop
nop
sub %r13, %r13
movw $0x5152, (%rcx)
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_WT+0x8143, %rdx
nop
cmp $29109, %rax
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'44': 14805, '45': 79, '00': 6945}
00 44 45 44 44 44 44 44 44 00 00 45 44 44 00 00 44 44 44 44 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 44 00 44 44 44 00 00 44 44 44 00 44 44 44 44 00 00 44 44 44 44 00 44 44 44 00 00 44 44 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 00 44 44 44 00 00 44 44 44 00 44 44 44 44 00 00 44 44 44 00 00 44 44 44 44 00 44 44 44 00 00 44 44 44 44 00 44 00 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 00 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 44 00 00 00 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 00 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 44 00 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 44 44 44 44 44 44 44 44 00 00 44 44 44 44 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 44 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 44 00 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 00 44 44 44 00 00 44 44 44 44 00 44 00 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 44 44 44 44 00 00 00 44 44 44 00 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 44 00 44 44 44 00 00 44 44 44
*/
