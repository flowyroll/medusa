.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14f6c, %r9
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
add $17875, %rbp
lea addresses_UC_ht+0x7fc6, %rsi
lea addresses_normal_ht+0x1a876, %rdi
nop
nop
nop
nop
nop
xor $46476, %r9
mov $97, %rcx
rep movsl
sub $6608, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x35b6, %rsi
mov $0x321dc50000000656, %rdi
nop
and $15548, %r8
mov $4, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $41105, %rcx

// Store
lea addresses_D+0x181d6, %rbp
nop
cmp %rsi, %rsi
movl $0x51525354, (%rbp)
nop
nop
cmp %rsi, %rsi

// Faulty Load
mov $0x321dc50000000656, %rcx
nop
nop
nop
nop
nop
sub %rbp, %rbp
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'ff': 1, '00': 9}
00 00 ff 00 00 00 00 00 00 00
*/
