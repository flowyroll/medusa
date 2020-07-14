.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x134e7, %rdi
nop
nop
nop
nop
nop
xor $35422, %rbp
mov (%rdi), %esi
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x1b9e7, %rsi
lea addresses_normal_ht+0xc08f, %rdi
nop
nop
nop
nop
nop
xor $18822, %r10
mov $69, %rcx
rep movsq
cmp %rcx, %rcx
lea addresses_UC_ht+0x1a2e7, %rbx
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0xc217, %rsi
lea addresses_normal_ht+0x104e7, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $29, %rcx
rep movsl
nop
nop
nop
nop
and $6871, %rsi
lea addresses_A_ht+0x111ed, %rsi
nop
and $62279, %rdi
movl $0x61626364, (%rsi)
nop
cmp %r13, %r13
lea addresses_WC_ht+0x1cc47, %rdi
nop
cmp $11520, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
nop
cmp $18585, %r10
lea addresses_A_ht+0x1c0e7, %rbx
nop
nop
add %rsi, %rsi
movb (%rbx), %cl
nop
inc %rbp
lea addresses_UC_ht+0x1ec5c, %rdx
nop
nop
nop
nop
nop
and $26305, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x175e7, %rdi
nop
add $12181, %rdx
movw $0x6162, (%rdi)
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1abff, %rsi
lea addresses_D+0xd317, %rdi
nop
sub %r12, %r12
mov $98, %rcx
rep movsw
nop
nop
nop
inc %rcx

// Store
lea addresses_UC+0x9fe7, %rcx
nop
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_RW+0x313b, %rbp
nop
cmp $2354, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovntdq %ymm2, (%rbp)
nop
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_US+0xb467, %rbp
nop
nop
nop
inc %rdi
movw $0x5152, (%rbp)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rcx
inc %r12

// Store
lea addresses_A+0x120e7, %r11
sub $35140, %rbp
movw $0x5152, (%r11)
nop
xor $59516, %r11

// Load
lea addresses_PSE+0xcc67, %r13
nop
nop
nop
sub $4746, %rsi
movups (%r13), %xmm7
vpextrq $0, %xmm7, %rcx
nop
inc %rbp

// Faulty Load
mov $0x442ab10000000ce7, %r12
nop
nop
nop
sub $41432, %rcx
movups (%r12), %xmm0
vpextrq $1, %xmm0, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'34': 58, '00': 173, '49': 20, '46': 16, '44': 1, '73': 1, '68': 15, 'ff': 1}
ff 00 00 34 00 00 00 00 00 00 73 00 34 49 34 00 00 44 68 00 00 00 00 00 46 00 46 00 00 34 34 00 68 46 34 00 00 34 49 34 00 00 00 00 49 46 68 00 00 00 46 00 34 00 00 46 00 00 34 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 34 49 46 34 00 34 00 00 34 49 00 49 00 00 68 49 34 49 49 00 34 00 34 00 00 00 00 00 34 34 00 49 00 34 00 00 00 34 68 00 00 00 34 00 46 00 00 34 00 34 00 00 00 00 00 34 34 34 68 34 34 00 00 00 68 34 68 00 00 34 00 00 00 00 00 00 00 00 34 34 00 00 34 00 00 46 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 34 00 00 34 34 46 34 00 34 00 49 34 00 00 34 00 34 49 00 00 68 34 00 34 00 00 68 00 34 00 34 00 34 68 00 00 00 00 34 34 00 46 00 00 00 00 00 00 00 49 00 49 00 68 00 46 00 00 00 34 49 00 00 34 00 00 00 34 46 00 49 68 00 00 00 34 00 00 00 46 00 49 00 34 00 00 00 00 00 00 68 00 00 34 46 00 00 34 00 00 00 00 34 00 46 00 00 68
*/
