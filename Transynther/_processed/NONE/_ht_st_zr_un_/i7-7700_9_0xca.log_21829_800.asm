.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x5bea, %rsi
lea addresses_UC_ht+0x17f28, %rdi
xor $18334, %rdx
mov $43, %rcx
rep movsq
nop
nop
sub $10494, %r8
lea addresses_UC_ht+0x14592, %rsi
lea addresses_UC_ht+0x123ea, %rdi
nop
nop
add $62525, %rbx
mov $16, %rcx
rep movsq
nop
nop
nop
and $46108, %rbx
lea addresses_A_ht+0x16f2a, %rdx
xor %r11, %r11
movl $0x61626364, (%rdx)
nop
nop
nop
nop
dec %rdx
lea addresses_UC_ht+0x74ca, %rdx
nop
nop
nop
nop
inc %rdi
mov (%rdx), %rcx
nop
nop
nop
nop
nop
sub $48239, %rcx
lea addresses_A_ht+0x712a, %rsi
nop
and %rdi, %rdi
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
nop
add $53410, %rbx
lea addresses_UC_ht+0x93ea, %rdx
nop
nop
nop
nop
xor $1643, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0xf5ea, %rsi
lea addresses_UC_ht+0xd33e, %rdi
add %r9, %r9
mov $5, %rcx
rep movsb
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1a7b2, %rsi
lea addresses_A_ht+0x1022a, %rdi
inc %r9
mov $14, %rcx
rep movsb
nop
nop
nop
nop
dec %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rbp
push %rcx
push %rdi

// Faulty Load
lea addresses_A+0x1c3ea, %r15
nop
nop
nop
nop
dec %rdi
vmovups (%r15), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'46': 875, '79': 23, '47': 1537, '00': 5665, 'ff': 12546, '02': 1, '53': 496, '45': 274, 'ab': 412}
ff ff ff 00 ff ff ff 00 ab 00 46 00 ff 00 47 ff ff ff ff ff 47 00 ff 46 47 00 ab 00 46 ff ff ff ff ff ff ff 45 00 ff ff ff ff ff 47 00 00 46 ff ff ff ff 00 ff 00 46 ff ff ff 00 47 ff ff 00 ff ff 00 ff 00 ab 00 ff ff 47 00 ff ff 00 ff ff 00 ab 00 ff ff ff ff ff ff ff ff ff ff ff 00 00 ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff 46 ff ff ff ff ff ff ff ff ff 47 00 00 00 00 ff ff ab 00 46 47 00 00 ff 47 00 ff ff ff ff ff ff ff 47 00 ff ff 47 00 47 00 00 ff ff 00 47 ff ab 00 46 53 00 ff ff ff ff 47 00 47 00 ff ff ff ff ff 46 53 00 ff ff ff ff ff 53 00 46 ff ff ff 00 46 00 47 ff ff ff ff ff ff ff ff ff ff ff 47 ff ff 46 00 47 53 00 ff ff ff 00 ff ff ff ff ff ff ff 00 ff 00 00 ff ff ff ff 00 ff ff ff ff 47 ff 47 00 47 00 ff ff ff ff ff ff ff 00 ff 00 47 00 ff 00 00 ff 00 ff ff ff ff 00 00 46 ff ff 00 ff 00 00 ff ff ff ff 46 ff 00 ff ff ff ff ff 47 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff 47 00 ff 00 ff ff ff ff ff ff ff ff ff 00 ff 00 ff ff ff 00 ab 00 ff 46 47 00 ff ff ff 53 00 ff 00 00 00 ff 00 ff 47 00 ff ff ff 00 ff ff ff 00 00 ff ff 00 ff ff ff 47 00 47 46 47 00 ff ff ff ff ff ff ff ff ff 47 00 47 00 ff 00 ff ff 47 00 00 ff ff ab 00 ff 00 ff ff ff ff 46 ff 47 ff ff 00 ff ff ff ff ff 00 ab 00 ff ff ff ff 00 ff ff ff ff 47 00 00 ff 53 00 00 ff ff 46 ff ff 00 47 00 ff ff 00 ff ff ff 00 00 46 ff ff 53 00 ff 47 00 ff 45 47 00 ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff 00 46 47 00 ff ff 00 00 ff ff ff 47 00 00 ff ff ff ff 46 47 00 46 ff ff 53 00 ff ff ff ff ff ff ff ff ff ff ff ff 47 00 00 ff 47 00 ff ff ff ff ff 46 00 47 00 ff ff ff ff ff ff 00 ff ff ff ff ff ff 46 53 00 00 ff 45 00 ff ff 00 ff ff ff 46 00 ff ff ff ff ff ff ff ff 45 00 47 ff ff 53 00 ff 00 ff ff ff ff ff ff ff ff ff ff ff ff 46 47 00 00 ff 00 ff ff 53 00 00 00 ff ff ff 47 00 ff ff 00 ff ff 47 ff ff ff ff ff ff 53 00 ff ff ff ff ff 00 ff 47 00 47 00 ff 46 ff ff ff ff ff 47 00 ff ff ff ff ff ff 46 ff 00 ff ab 00 ff ff ff ff 46 00 47 00 00 ff 47 00 ff ff 00 ff ff 00 00 ab 00 00 53 00 ff 00 ff ff ff ff ff ff ff ff 00 00 47 00 ff ff 00 ff 46 00 47 00 ff ff 46 ff ff ff ff ff ff ff ff ff ff 47 00 ff 47 00 00 00 ff ff ff 47 00 00 ff ff 53 00 ff 47 00 00 ff ff ab 00 ff ff ff ff ff ff ff 47 00 ff ff 00 00 ff ff ff 00 47 47 00 ff 47 00 ff ff ff ff ff ff 53 00 ff ff 53 ff 00 ff ff ff 47 00 ff ff ff 46 00 47 00 ff ff ff ff ff ff ff ff ff ff 47 00 ff 00 00 ff 00 ff 47 00 47 00 00 ff ff ff 00 ff 00 ff ff ff 47 00 00 ff ff ff ff ff ff ff 47 00 00 ff ff 00 ab 00 ff ff ab 00 46 ff ff ff 47 00 00 47 00 ff ff ab 00 ff 00 46 00 ff ff 00 ff 53 00 ff 00 ff ff ff ff ff 45 00 00 00 00 47 00 45 47 00 ff ff ff ff 53 00 ff ff 00 46 00 47 00 ff ff 47 00 ab 00 ff 46 46 ff ff 45 53 00 ff ff 00 ff 00 ff 00 ff ff ff 00 ff ff ff ff 00 ff ff ff ff ff ff 00 ff 00 ff ff 53 46 ff 53 00 00 ab 00 46 ff ff ff ff ff ff 00 47 00 53 00 ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff 00 ff 00 ff 00 ff 00 ff ff ff ff 47 00 47 00 ff 00 00 ab 00 ff 46 00 ff ff 46 ff 45 00 00 ff ff 46 53 00 ff 46 00 47 ff ff 00 ff
*/
