.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a7b5, %rsi
lea addresses_WC_ht+0x81a5, %rdi
nop
nop
nop
nop
add $37200, %r10
mov $123, %rcx
rep movsl
nop
nop
nop
nop
add $30719, %r11
lea addresses_A_ht+0x1d575, %rsi
lea addresses_A_ht+0x1b1a5, %rdi
nop
nop
nop
inc %r14
mov $85, %rcx
rep movsb
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x1ce7d, %rsi
lea addresses_D_ht+0x1bc35, %rdi
nop
nop
cmp $49256, %r12
mov $112, %rcx
rep movsw
nop
nop
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi

// Store
mov $0x4a8ce70000000a0f, %rbx
add $37558, %r15
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
nop
nop
dec %rbp

// Store
mov $0x1172990000000935, %r12
clflush (%r12)
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r12)
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_RW+0x10735, %rbx
nop
cmp $31206, %r15
movw $0x5152, (%rbx)
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_WC+0x2535, %r8
nop
nop
nop
nop
add $18854, %rdi
movups (%r8), %xmm5
vpextrq $0, %xmm5, %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}}
{'3c': 1, '49': 828, '00': 1, '45': 952, 'ff': 329}
49 ff ff 49 ff 49 49 49 45 45 45 45 49 45 45 45 49 49 ff 45 49 45 45 45 ff 45 45 49 49 49 45 45 49 45 45 45 49 49 49 49 49 49 49 49 45 ff 49 49 49 49 ff 49 49 49 49 49 ff 49 ff 45 49 49 45 ff 45 45 45 ff 45 45 ff 45 45 45 ff 45 45 ff 49 45 49 45 45 ff 45 45 49 45 45 49 49 45 ff ff 49 ff 45 45 45 45 45 49 49 45 45 45 45 45 49 49 49 45 45 49 45 45 49 45 45 49 49 ff 49 49 49 49 45 45 ff 45 49 ff 49 49 ff 45 45 ff ff 49 49 45 49 45 45 ff 49 ff 45 45 49 45 45 45 45 45 45 49 45 45 45 45 49 49 45 45 45 49 45 49 45 ff 45 ff ff 49 49 45 49 49 49 45 45 45 45 45 ff 49 45 45 49 49 ff 49 49 ff 45 45 45 45 45 45 45 49 45 49 49 49 49 45 45 45 49 ff 49 49 45 49 ff 49 49 49 49 45 49 45 ff 45 45 ff 45 45 49 45 ff ff 49 49 45 45 49 49 49 45 45 45 49 45 49 45 49 45 49 49 49 49 45 45 ff ff 45 45 45 49 45 45 45 45 45 45 49 45 49 49 45 49 45 49 45 45 ff 49 45 49 49 49 45 45 ff 45 49 45 49 45 45 49 49 45 45 45 45 ff 45 45 ff 49 45 49 45 49 49 ff 49 49 49 49 ff ff ff 49 49 45 49 ff 49 ff 49 ff 45 45 45 45 45 49 49 45 45 ff 45 49 ff 49 49 49 49 ff ff ff 45 ff 49 45 45 45 ff 45 45 49 49 45 45 ff ff 45 45 45 45 ff 45 49 45 45 49 49 ff 49 49 49 49 49 ff ff 49 45 45 45 ff 49 49 45 45 49 45 45 49 45 45 49 45 49 49 45 ff 45 45 45 ff 49 ff 49 49 49 49 45 45 49 45 49 49 ff 49 49 49 49 49 49 49 49 49 49 45 45 45 45 49 49 ff ff 45 45 45 ff 45 45 49 49 45 45 49 ff 45 45 ff ff 49 45 ff 49 45 45 49 49 49 ff 45 45 49 49 45 49 45 49 ff 45 45 45 45 49 49 45 45 ff 45 45 49 ff 45 45 ff 45 49 49 45 ff 45 ff 49 45 ff 49 49 49 49 49 ff ff 49 49 45 45 45 45 45 45 45 45 ff ff 45 45 45 45 49 45 49 49 ff 49 ff 49 49 45 45 45 45 49 49 45 49 49 49 49 45 49 45 49 49 45 49 49 49 49 ff ff 49 45 45 45 45 49 49 49 45 45 45 49 45 49 49 45 ff ff 45 45 45 45 45 49 49 49 49 49 45 45 49 49 ff 45 45 ff 45 45 49 ff 45 45 49 49 49 49 45 45 45 45 49 49 49 45 45 ff 49 49 49 49 45 49 45 49 45 45 45 49 49 49 ff 45 49 ff 49 49 45 45 45 45 49 ff 49 49 ff 49 45 45 49 45 45 ff 49 49 49 49 49 49 45 45 49 49 45 49 45 49 49 45 49 45 45 45 45 ff 49 49 49 49 ff 45 45 45 45 ff 49 49 49 49 45 45 45 49 45 49 49 45 49 49 49 45 45 45 45 49 45 49 49 ff 49 49 ff 49 49 45 45 ff 49 49 49 49 45 45 45 49 ff 49 49 45 45 ff ff 49 45 49 45 45 49 45 ff 45 45 45 45 45 ff 45 45 45 ff ff ff 45 45 45 45 45 45 45 ff 49 45 45 49 49 45 45 45 49 49 45 49 49 49 45 45 49 ff 45 45 49 49 45 45 45 49 45 49 45 ff 45 49 45 45 49 49 49 49 49 49 49 3c 49 49 49 45 ff 49 49 ff 49 45 45 49 45 49 49 49 49 ff ff ff 45 45 45 45 45 49 ff ff ff 49 49 49 49 ff 49 49 ff 49 45 45 49 49 49 49 49 45 ff 49 ff 45 45 45 45 49 45 45 49 49 45 ff 49 49 49 ff 45 45 49 49 ff 49 45 49 ff 49 49 ff ff 49 45 49 45 45 ff 49 ff 45 49 49 45 ff 49 45 45 45 49 ff 49 49 45 49 45 45 45 49 45 45 45 45 45 49 49 49 49 45 45 45 45 ff ff ff 45 45 45 49 45 45 45 45 45 49 ff 49 45 45 45 ff 45 49 45 ff ff 45 45 45 45 45 45 ff ff 45 45 45 49 45 49 ff 49 45 45 49 49 49 49 49 45 45 49 49 ff 49 49 49 45 45 ff 45 45 49 45 45 ff 45 45 ff 45 45 ff 49 49 49 45 ff 45 ff 45 45 49 ff 45 45 ff ff 49 ff 45
*/
