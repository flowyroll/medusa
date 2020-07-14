.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x878, %rsi
lea addresses_A_ht+0x1ccd0, %rdi
nop
nop
sub $37155, %r15
mov $91, %rcx
rep movsb
nop
xor $54881, %rdx
lea addresses_A_ht+0x1b948, %r12
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x87e8, %rsi
lea addresses_WC_ht+0x11648, %rdi
nop
cmp %r9, %r9
mov $1, %rcx
rep movsw
xor %rsi, %rsi
lea addresses_D_ht+0x1b548, %rsi
nop
nop
nop
add $40850, %r15
mov (%rsi), %r9w
nop
nop
nop
dec %r9
lea addresses_D_ht+0x1e8e8, %rdx
nop
nop
inc %r12
mov (%rdx), %r14
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x7d48, %rsi
lea addresses_D_ht+0x1a508, %rdi
nop
nop
nop
nop
nop
sub $1967, %r12
mov $38, %rcx
rep movsl
nop
nop
sub $15488, %r14
lea addresses_WT_ht+0xd148, %r14
nop
and $23457, %rcx
movups (%r14), %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x4798, %rdi
nop
nop
nop
cmp %rcx, %rcx
movw $0x6162, (%rdi)
dec %rdi
lea addresses_WC_ht+0xbe2, %r9
nop
nop
nop
nop
sub $46251, %r12
movw $0x6162, (%r9)
nop
nop
nop
nop
cmp $2130, %rcx
lea addresses_UC_ht+0x58ec, %rsi
nop
nop
nop
xor %r9, %r9
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x12748, %rsi
lea addresses_WC_ht+0x2828, %rdi
nop
nop
nop
nop
inc %r14
mov $6, %rcx
rep movsq
nop
nop
nop
cmp %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_normal+0x1ab48, %r12
clflush (%r12)
nop
nop
nop
nop
sub %rdx, %rdx
movb $0x51, (%r12)
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_D+0x1cd48, %r14
inc %rax
movw $0x5152, (%r14)
nop
nop
inc %r14

// Store
lea addresses_PSE+0x17ffc, %r12
nop
add %rdx, %rdx
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
and %r12, %r12

// Faulty Load
lea addresses_US+0xcd48, %rbx
nop
nop
nop
nop
nop
sub $28964, %r11
mov (%rbx), %ebp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}}
{'52': 3}
52 52 52
*/
