.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xe7ff, %rsi
lea addresses_UC_ht+0x149ff, %rdi
nop
nop
add $10412, %rbx
mov $95, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x1697f, %rcx
add %r9, %r9
movl $0x61626364, (%rcx)
nop
nop
nop
sub $18379, %r9
lea addresses_normal_ht+0x10bbd, %rsi
lea addresses_normal_ht+0x70ff, %rdi
nop
nop
lfence
mov $30, %rcx
rep movsq
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x55ff, %r13
nop
and %r9, %r9
movb (%r13), %bl
nop
nop
nop
nop
add $22999, %rsi
lea addresses_WT_ht+0x1a77, %rsi
lea addresses_normal_ht+0x93ff, %rdi
nop
nop
nop
cmp %r13, %r13
mov $33, %rcx
rep movsq
xor %r13, %r13
lea addresses_WT_ht+0x175ff, %rbx
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
xor $45346, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rax
push %rdx

// Faulty Load
lea addresses_US+0x1d5ff, %rdx
nop
nop
nop
and $20926, %rax
mov (%rdx), %r14d
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rdx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'46': 3381, '44': 451, '48': 90, '00': 2140, 'ac': 1, '53': 1266, '3c': 1, '49': 83, 'f0': 68, '80': 1, 'd0': 18, 'ff': 11505, '10': 2820, '01': 3, 'e0': 1}
ff 53 00 ff ff 00 46 00 00 00 ff ff 46 ff ff ff 00 53 ff ff 46 00 00 46 44 ff ff 00 00 ff ff ff ff 46 ff ff 46 ff ff 10 ff 46 46 46 ff ff ff 10 ff ff 10 ff 10 ff 10 ff ff ff 10 ff 53 53 46 53 46 ff ff ff ff ff ff 10 ff 10 48 ff 00 ff 10 ff 10 00 ff 46 00 ff ff ff ff 10 ff ff 00 ff 10 46 ff ff 10 ff 10 ff 10 44 46 53 ff ff ff ff 10 ff 10 46 46 ff ff ff 10 53 ff ff 10 ff 10 46 53 ff ff ff 46 ff 10 00 ff f0 44 ff 46 ff 46 53 46 ff ff ff 46 46 ff ff 46 ff 53 53 ff 53 44 ff ff ff 00 ff ff f0 ff ff 10 ff 10 ff 10 ff ff 49 ff ff 10 00 ff 46 ff 46 ff 46 44 ff ff ff 10 46 ff ff ff ff 10 ff ff 10 ff 10 53 ff ff 00 ff 10 ff 00 ff 46 ff 44 ff 53 00 ff 46 46 ff ff ff ff 10 46 46 ff ff ff 10 46 53 ff ff 48 46 ff 00 ff ff ff 10 53 ff 46 ff ff ff ff ff 10 46 ff 44 ff 10 ff 00 ff 53 53 ff 00 00 53 ff ff 10 ff ff 00 ff 46 ff ff 46 00 46 00 ff ff ff ff 00 ff ff ff ff 10 46 53 ff ff 53 ff ff 46 ff 00 44 ff ff ff 10 ff ff 10 46 ff ff 10 00 46 ff ff 10 ff ff 10 ff 46 ff ff 10 46 ff ff 10 ff 10 46 ff ff 10 ff ff 10 ff ff 10 46 ff ff 46 ff 10 ff ff 10 ff 10 46 ff 10 53 53 ff f0 49 ff 46 00 ff ff ff ff 00 46 44 ff ff ff 00 ff ff 10 ff 46 ff 46 ff ff 10 00 46 46 53 ff ff 46 53 ff 00 46 ff ff ff 46 53 53 00 46 ff ff ff 46 00 ff ff 00 00 46 ff ff 46 ff ff 46 ff 44 46 46 ff 46 ff ff ff 46 ff ff ff 10 ff 10 00 ff ff 10 00 ff ff 00 ff ff ff 10 ff ff ff 10 53 ff 00 ff ff 10 ff 46 00 46 ff ff ff ff 10 ff ff 10 ff 46 48 46 46 00 ff 00 00 ff ff 46 46 46 ff 46 ff ff ff ff ff 46 ff ff 10 ff 10 53 ff ff ff 10 00 ff 00 ff 46 53 ff ff 53 ff ff 10 ff 10 00 46 ff 00 46 ff ff ff 53 ff 46 53 ff ff ff ff 10 ff 00 ff 10 ff 44 ff 10 ff 46 53 ff ff ff 10 ff 46 ff ff ff ff ff ff 46 ff 46 ff 10 ff 46 53 ff ff 10 ff 53 ff 10 53 49 ff ff ff 46 00 ff 46 ff ff ff 10 46 53 46 ff ff ff ff ff 10 ff 10 ff 46 53 ff ff 00 53 46 ff ff ff 46 53 ff ff 46 ff ff 46 ff ff 46 53 ff ff 44 ff ff 00 ff 10 46 ff 46 53 53 ff ff 00 46 ff ff ff ff 46 ff 00 ff ff 10 ff 00 ff 10 ff ff 10 46 ff 46 ff 10 00 ff ff 46 00 ff 46 46 46 00 ff ff ff ff ff 10 46 53 ff 00 ff ff ff ff 00 ff 10 ff ff ff 00 00 ff 00 46 ff ff ff 00 ff ff ff 10 00 00 46 ff 46 ff ff 00 46 ff ff ff ff 10 ff 53 53 ff 46 53 46 ff ff ff 46 ff ff ff ff 46 ff 10 ff 10 46 ff ff 46 ff ff ff 10 ff 10 ff 10 ff 46 ff 10 ff 10 46 53 ff 00 46 ff ff ff 00 ff 46 ff 00 ff ff 10 ff ff 10 46 44 ff ff ff 10 00 ff 44 ff 00 ff ff f0 ff 00 46 ff 46 ff 00 46 44 ff ff ff 46 00 ff 00 46 ff ff ff 46 ff ff 53 53 49 ff ff ff 00 53 ff 00 46 ff ff ff ff f0 ff 46 00 ff ff ff ff 00 ff ff ff 10 46 ff 10 ff ff ff 10 ff 10 46 ff ff 10 46 ff 10 ff 10 ff 00 ff 10 53 44 ff ff ff 10 ff 10 ff 00 53 46 46 00 ff ff ff 46 ff 46 46 44 ff ff ff 48 ff ff 10 ff ff ff ff ff 10 ff 46 44 46 ff ff 00 44 46 ff ff ff 53 ff 48 46 00 46 ff ff ff ff 10 46 00 46 ff ff ff 46 ff 44 ff 10 46 ff ff 10 ff 00 ff ff ff ff 46 ff 46 ff ff ff 10 46 53 46 ff ff ff 10 49 ff ff 10 ff ff 10 46 ff ff 10 ff ff ff 10 46 ff ff ff 10 ff 10 ff ff ff 10 53 ff ff 10 ff 10 ff 10 ff 10 46 46 00 46 ff ff ff ff 10 ff 10 ff 46 00 ff ff
*/
