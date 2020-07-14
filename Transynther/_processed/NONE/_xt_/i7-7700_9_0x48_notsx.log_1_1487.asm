.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x151ef, %r8
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x109ef, %rsi
lea addresses_A_ht+0xe14f, %rdi
clflush (%rsi)
and $29422, %r11
mov $5, %rcx
rep movsb
add %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x235a, %r10
nop
nop
nop
nop
nop
add $23272, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
nop
inc %r10

// REPMOV
lea addresses_D+0x56ef, %rsi
lea addresses_UC+0xce5b, %rdi
nop
xor %rbx, %rbx
mov $22, %rcx
rep movsb
nop
nop
cmp $60563, %rbx

// Store
mov $0x79c6260000000fef, %rsi
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
cmp $15638, %rdi

// Store
lea addresses_WT+0x10034, %r10
nop
nop
nop
nop
nop
cmp $60891, %rsi
movw $0x5152, (%r10)
nop
nop
nop
nop
cmp $52762, %rsi

// Store
mov $0xbef, %rsi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_US+0x1b5ef, %r10
nop
sub %r12, %r12
movb $0x51, (%r10)
nop
nop
nop
sub %rdi, %rdi

// Load
lea addresses_WT+0x1b5ef, %r10
nop
and %rbx, %rbx
mov (%r10), %rsi
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_RW+0x121ef, %rcx
nop
and %rbx, %rbx
movb (%rcx), %r14b
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'32': 1}
32
*/
