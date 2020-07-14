.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xf8d2, %r11
and %r10, %r10
mov $0x6162636465666768, %r9
movq %r9, %xmm4
movups %xmm4, (%r11)
and $5149, %r11
lea addresses_WC_ht+0x14dea, %r8
nop
nop
nop
nop
xor %r9, %r9
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0xec36, %r12
sub $24882, %r13
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%r12)
nop
nop
and $59044, %r11
lea addresses_UC_ht+0xf592, %r13
nop
nop
xor $40129, %r11
mov (%r13), %r10w
nop
nop
nop
add %r12, %r12
lea addresses_normal_ht+0x826a, %rsi
nop
xor $57485, %r12
mov (%rsi), %r9w
nop
nop
inc %r10
lea addresses_UC_ht+0x1366a, %rsi
lea addresses_WT_ht+0x17aea, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r13, %r13
mov $11, %rcx
rep movsl
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rdx
push %rsi

// Store
mov $0x771111000000066a, %r11
nop
nop
nop
xor %rax, %rax
movl $0x51525354, (%r11)
nop
nop
nop
nop
and %rax, %rax

// Faulty Load
mov $0x771111000000066a, %r12
nop
and $60001, %r14
mov (%r12), %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'54': 11319, '5f': 7241, '00': 3269}
54 54 54 5f 00 54 00 54 00 54 00 5f 54 54 5f 54 54 00 00 5f 5f 54 54 5f 54 5f 54 54 54 5f 54 5f 54 54 54 54 5f 5f 5f 5f 54 5f 54 54 00 5f 5f 54 54 5f 54 5f 54 5f 00 54 00 00 54 54 5f 54 54 5f 54 5f 00 5f 5f 54 54 5f 54 5f 5f 5f 5f 54 54 54 54 5f 54 54 54 5f 5f 54 00 54 5f 54 00 5f 54 54 5f 5f 00 54 00 5f 00 54 54 00 54 54 54 5f 00 5f 00 5f 00 5f 54 5f 5f 5f 54 00 5f 00 54 00 54 54 54 5f 5f 5f 5f 54 54 54 54 54 5f 54 54 5f 54 54 54 5f 54 00 54 5f 5f 54 54 54 54 54 5f 5f 00 5f 00 5f 00 5f 54 00 54 54 54 54 5f 54 54 54 54 54 00 5f 5f 54 5f 54 5f 5f 54 5f 5f 54 5f 5f 54 54 5f 54 5f 54 5f 5f 00 54 54 54 5f 5f 00 54 00 54 5f 54 5f 54 5f 5f 54 00 54 54 5f 54 5f 54 54 00 54 5f 54 5f 54 54 54 5f 54 54 5f 54 54 00 5f 5f 54 5f 54 5f 00 5f 5f 54 5f 54 00 54 5f 54 00 54 54 54 5f 54 00 54 54 5f 00 5f 5f 54 54 54 54 54 5f 5f 54 54 00 54 54 5f 54 00 54 5f 54 5f 54 54 54 54 54 54 54 54 5f 54 00 5f 5f 5f 5f 00 5f 54 5f 00 54 54 54 54 54 54 00 54 00 5f 54 54 54 54 5f 54 54 00 54 54 00 00 5f 00 54 54 00 54 00 00 5f 54 54 5f 5f 54 5f 54 5f 5f 5f 54 5f 54 54 54 54 54 54 54 54 54 54 54 5f 54 00 5f 5f 54 54 54 54 5f 5f 54 54 54 00 54 54 5f 00 5f 00 54 5f 54 54 54 5f 54 5f 5f 54 54 5f 5f 54 5f 54 5f 5f 54 54 54 54 00 5f 54 00 5f 54 5f 00 54 5f 54 54 00 54 5f 54 54 54 54 54 54 5f 54 5f 54 00 5f 54 54 5f 54 54 54 5f 5f 5f 54 54 5f 54 54 54 5f 5f 5f 5f 54 54 54 00 54 54 54 54 54 54 5f 5f 54 54 54 5f 54 54 00 54 5f 54 54 5f 00 54 54 5f 54 54 5f 54 54 54 54 54 00 5f 5f 5f 5f 54 5f 54 00 5f 5f 00 00 54 00 54 5f 5f 00 5f 5f 54 54 5f 54 54 5f 5f 5f 54 00 54 00 5f 54 00 5f 5f 54 54 54 5f 54 00 54 5f 54 54 54 54 54 54 5f 00 00 54 54 54 54 00 5f 00 5f 00 54 54 5f 54 54 54 54 54 5f 5f 5f 54 5f 54 5f 00 00 54 5f 54 5f 54 5f 54 00 54 54 00 54 00 54 54 5f 54 5f 5f 54 54 54 5f 54 54 54 5f 00 5f 54 5f 54 5f 5f 54 5f 5f 54 54 5f 54 5f 00 54 54 5f 54 5f 54 5f 54 00 5f 5f 54 5f 54 00 00 5f 54 5f 54 00 54 5f 54 54 5f 54 5f 54 54 5f 54 54 5f 00 5f 5f 00 54 00 54 54 54 54 54 5f 54 5f 54 00 54 54 54 54 5f 54 54 5f 54 5f 54 54 54 54 00 54 54 54 54 54 54 5f 54 5f 5f 54 5f 00 54 5f 5f 54 54 00 54 00 54 5f 00 54 5f 54 54 54 5f 5f 00 54 54 54 5f 54 5f 54 54 5f 54 5f 54 54 5f 54 54 54 00 54 5f 54 54 54 00 54 54 00 54 5f 5f 54 54 54 54 54 54 5f 54 5f 00 54 00 54 5f 54 5f 54 54 54 54 00 5f 5f 54 5f 5f 5f 5f 54 54 54 5f 5f 54 54 54 00 54 54 54 5f 54 5f 54 5f 54 5f 54 5f 54 54 00 54 5f 54 54 54 54 00 5f 00 54 00 54 54 54 54 00 5f 54 54 54 54 54 00 5f 54 5f 5f 54 5f 54 5f 5f 54 54 54 54 5f 54 54 5f 00 5f 5f 5f 54 54 54 5f 00 00 5f 54 5f 54 00 54 00 54 54 5f 5f 54 00 5f 54 54 5f 5f 5f 54 5f 00 5f 5f 54 54 54 54 54 5f 5f 54 00 54 54 5f 54 54 00 54 54 5f 5f 5f 54 00 54 54 5f 5f 5f 00 54 54 54 5f 5f 5f 54 00 54 54 54 5f 54 5f 54 54 54 5f 54 5f 54 54 54 54 54 00 5f 54 5f 5f 54 5f 54 54 54 00 00 54 54 54 00 54 54 5f 00 5f 54 54 00 54 54 54 5f 5f 54 54 5f 54 5f 5f 5f 54 5f 54 54 54 5f 5f 54 5f 54 00 54 5f 54 54 5f 54 5f 5f 54 5f 54 5f 5f 5f 5f 5f 5f 00 54 5f 54 5f 54 5f 5f 54 5f 5f 54 00 54 5f 5f 54 00 5f 54 54
*/
