.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x164dc, %rbp
and %rax, %rax
movw $0x6162, (%rbp)
nop
nop
sub $55309, %rbx
lea addresses_D_ht+0xf0dc, %rsi
lea addresses_WC_ht+0xa9dc, %rdi
nop
nop
nop
nop
nop
add $65137, %r11
mov $92, %rcx
rep movsb
nop
nop
nop
nop
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rdx

// Load
lea addresses_US+0x18cdc, %rdx
nop
inc %r8
movntdqa (%rdx), %xmm0
vpextrq $0, %xmm0, %r14
nop
dec %r14

// Load
lea addresses_normal+0x91cc, %r8
nop
nop
nop
nop
nop
sub %r12, %r12
movb (%r8), %r10b
nop
nop
cmp %r14, %r14

// Store
lea addresses_PSE+0x83dc, %r10
nop
nop
sub %rbp, %rbp
movw $0x5152, (%r10)
nop
nop
nop
add $54205, %r14

// Faulty Load
lea addresses_US+0x18cdc, %r12
nop
nop
nop
nop
sub %r14, %r14
movb (%r12), %r10b
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'fd': 2350}
fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
*/
