.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1a7d1, %rsi
lea addresses_A_ht+0xad84, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $43, %rcx
rep movsw
dec %rax
lea addresses_A_ht+0x1a94c, %r13
nop
nop
nop
nop
sub %r12, %r12
movw $0x6162, (%r13)
add $21942, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WT+0x131aa, %r15
add %rcx, %rcx
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
and %r9, %r9

// Load
lea addresses_PSE+0x12d84, %rdx
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rdx), %cx
nop
nop
sub $32707, %r15

// Load
mov $0x318660000000904, %rsi
cmp $35, %rbx
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %r10
sub %r9, %r9

// Store
lea addresses_WC+0x1b83c, %r9
nop
nop
nop
inc %rbx
movw $0x5152, (%r9)
nop
nop
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_D+0x1304, %rcx
nop
dec %r9
mov (%rcx), %r15d
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'36': 58}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
