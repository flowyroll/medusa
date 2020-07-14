.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c3a5, %rsi
lea addresses_UC_ht+0x12663, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $50, %rcx
rep movsb
nop
dec %r15
lea addresses_WT_ht+0x15727, %r8
clflush (%r8)
nop
nop
dec %r14
movw $0x6162, (%r8)
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x1c6d5, %r15
nop
nop
nop
nop
cmp $58097, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
add $34062, %r14
lea addresses_UC_ht+0x6dbc, %r8
nop
nop
nop
nop
add $6511, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm7
vmovups %ymm7, (%r8)
inc %rbp
lea addresses_UC_ht+0xae18, %r14
clflush (%r14)
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm3
movups %xmm3, (%r14)
nop
nop
and %r8, %r8
lea addresses_D_ht+0x72cf, %r14
nop
nop
nop
nop
nop
and $30233, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0xe42f, %rsi
lea addresses_normal_ht+0xc7cf, %rdi
nop
nop
add $13027, %r12
mov $97, %rcx
rep movsq
cmp $37536, %rbp
lea addresses_normal_ht+0xbacf, %rsi
lea addresses_A_ht+0x1ee4f, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $125, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rbp
push %rbx

// Faulty Load
lea addresses_UC+0x15acf, %r15
and %r13, %r13
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'44': 11955, '45': 9873, 'ff': 1}
45 44 44 44 44 44 44 45 45 45 45 45 45 45 45 45 45 44 44 44 44 45 45 44 45 45 45 45 45 45 44 44 44 44 45 45 45 45 44 44 44 45 45 45 45 44 44 45 44 45 44 44 44 45 45 45 45 45 45 45 44 45 45 44 44 44 44 44 44 44 45 45 45 45 44 44 45 44 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 45 45 44 44 45 45 45 45 44 44 45 45 45 44 44 44 44 44 45 45 45 45 44 44 44 45 45 44 44 44 44 44 45 45 45 44 44 44 45 45 45 44 45 44 44 44 45 44 44 44 45 45 44 44 44 44 44 44 44 44 44 45 45 44 45 45 44 45 44 44 44 44 45 45 45 45 45 44 44 45 45 45 45 45 45 44 44 45 45 44 44 45 44 45 44 44 44 44 44 44 44 44 44 44 45 45 45 45 44 44 44 44 44 44 44 44 44 45 45 44 44 44 45 45 45 44 44 44 44 44 45 44 44 44 45 45 45 44 44 44 45 45 45 45 44 44 45 44 45 44 44 45 45 45 44 44 44 44 44 44 44 44 44 44 45 45 45 45 45 44 44 44 45 45 45 45 45 45 45 45 44 44 44 44 45 45 44 45 44 44 45 45 45 44 44 44 45 45 45 44 44 44 45 44 45 44 44 44 45 45 45 44 44 45 45 44 44 44 44 44 44 44 44 44 44 45 45 45 45 45 45 44 45 45 44 45 45 44 44 44 45 45 45 44 45 44 44 45 44 44 44 45 44 44 45 45 45 45 45 44 44 44 44 45 45 44 44 44 44 45 45 45 45 45 45 45 45 44 44 44 45 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 44 44 44 45 45 45 45 45 45 44 44 44 44 45 44 44 44 45 45 44 45 45 45 45 44 44 45 45 45 44 44 44 44 44 44 44 44 44 45 45 45 45 45 45 45 45 44 44 44 45 45 45 45 44 44 45 44 44 44 44 45 45 44 44 44 45 45 44 44 44 44 44 44 45 44 45 45 44 44 44 45 45 45 45 44 44 44 45 45 45 45 45 45 44 45 45 45 44 44 45 45 45 45 44 44 44 44 44 44 44 45 44 44 44 44 45 45 45 44 45 45 45 45 45 44 44 44 44 45 45 44 45 44 44 45 44 45 45 45 45 45 44 44 44 45 45 44 44 44 44 45 45 45 45 45 45 45 45 44 45 44 44 45 45 44 44 44 45 44 44 45 45 45 45 45 45 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 45 45 44 45 44 44 44 44 45 45 44 44 44 45 45 45 45 44 44 44 44 44 45 45 45 45 45 45 45 44 44 44 44 44 44 44 44 44 45 45 45 45 45 45 45 44 44 44 44 45 45 45 45 45 45 45 45 44 45 44 44 44 44 44 44 44 44 44 44 45 44 45 45 45 45 44 44 44 45 45 45 45 45 45 44 44 45 45 45 44 44 45 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 45 45 45 45 44 44 44 44 45 45 45 44 44 44 44 45 44 44 44 45 44 44 45 45 45 45 45 44 45 44 45 45 45 45 44 44 44 44 44 44 45 45 45 45 44 45 44 45 44 45 45 45 45 45 44 45 45 44 44 44 44 44 44 44 44 45 45 45 44 44 44 45 44 44 44 45 44 44 45 45 44 44 44 44 45 45 44 44 45 45 45 44 44 44 44 44 45 45 45 45 44 44 44 44 45 44 44 45 45 45 44 45 45 45 45 44 44 45 45 45 44 45 45 45 45 44 44 44 44 44 45 45 45 45 44 45 44 45 45 45 45 45 44 44 44 44 45 45 45 44 44 44 45 44 45 45 44 44 44 44 45 45 45 44 45 44 44 44 45 45 45 45 44 44 45 44 45 44 44 45 45 45 44 44 44 44 44 44 44 44 44 45 45 45 45 45 45 45 44 44 44 45 45 45 45 44 44 44 45 45 44 44 44 44 44 44 45 45 45 45 45 44 44 44 44 45 44 44 44 44 44 44 44 45 44 45 44 44 44 45 45 44 45 45 45 44 44 45 45 44 45 44 44 44 45 44 44 44 44 44 44 44 44 45 45 45 45 44 44 44 45 45 45 44 45 44 45 45 44 45
*/
