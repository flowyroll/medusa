.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x2526, %rbx
nop
nop
nop
nop
nop
sub %r12, %r12
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
nop
mfence
lea addresses_UC_ht+0xff26, %rdi
nop
nop
and $18352, %r14
movb (%rdi), %al
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0xd46, %rsi
lea addresses_WC_ht+0x14a26, %rdi
xor %r12, %r12
mov $9, %rcx
rep movsb
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0xb459, %rax
nop
nop
nop
nop
nop
sub %r12, %r12
mov (%rax), %r11d
nop
add %rbx, %rbx
lea addresses_UC_ht+0x128eb, %r11
nop
nop
nop
nop
nop
cmp $28246, %r10
mov $0x6162636465666768, %r14
movq %r14, (%r11)
xor $33434, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbx

// Faulty Load
mov $0xc26, %r8
nop
nop
nop
nop
nop
inc %r13
movntdqa (%r8), %xmm4
vpextrq $1, %xmm4, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'31': 2, '45': 17191, '49': 4636}
45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 49 45 49 49 45 45 45 49 49 45 45 45 45 49 49 45 49 45 45 49 45 45 45 45 45 49 45 49 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 49 45 45 49 45 49 45 45 49 45 45 45 49 49 45 45 49 45 49 45 45 45 45 45 49 49 45 49 45 45 45 45 45 45 45 45 49 45 45 49 49 49 45 45 45 49 49 45 45 45 45 45 45 49 45 49 45 45 45 45 49 45 49 45 45 45 45 49 49 45 45 45 45 49 49 45 45 45 45 49 45 45 45 49 49 49 49 49 45 49 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 45 49 45 45 49 45 45 49 49 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 45 45 49 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 49 45 49 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 45 45 45 49 49 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 49 45 49 45 45 49 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 49 45 45 49 49 45 49 49 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 49 45 49 45 49 45 45 45 45 45 45 45 49 45 45 45 45 49 45 49 49 45 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 49 49 45 49 49 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 49 45 45 49 49 45 49 49 49 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 49 49 49 49 45 45 49 49 45 45 45 49 45 45 49 45 49 45 49 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 49 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 49 49 45 45 45 49 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 49 45 45 45 45 45 45 45 49 45 45 49 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 49 45 45 45 49 45 45 45 49 45 45 45 45 45 49 49 45 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 49 45 45 45 45 49 49 49 45 49 45 45 45 45 45 49 49 45 45 49 45 49 45 45 45 49 49 49 45 49 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 45 45 49 49 49 49 45 45 45 45 49 45 49 45 49 45 45 45 45 45 49 45 49 49 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 49 45 45 49 49 49 49 45 49 45 45 49 45 45 49 45 45 49 49 49 45 45 45 45 45 45 49 45 49 45 45 49 45 45 45 45 45 49 45 45 45 49 45 45 45 49 45 49 45 49 49 45 45 49 45 45 45 49 49 49 45 49 45 45 45 49 45 49 49 49 45 45 45 45 45 45 49 45 45 49 45 45 49 45 49 45 45 45 45 49 49 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 49 49 45 45 49 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 45 49 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 49 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 49 45 45 49 45 45 49 49 45 45 45 45 45 49 45 49 45 49 45 45
*/
