.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x315c, %rsi
lea addresses_D_ht+0x72b8, %rdi
add $3153, %rdx
mov $118, %rcx
rep movsl
inc %rsi
lea addresses_normal_ht+0x8f8, %rsi
lea addresses_WT_ht+0x10248, %rdi
sub %r12, %r12
mov $23, %rcx
rep movsw
cmp $24469, %rdi
lea addresses_WT_ht+0x1aeb8, %rsi
lea addresses_D_ht+0xa1f8, %rdi
nop
nop
nop
nop
sub %r10, %r10
mov $85, %rcx
rep movsq
dec %r10
lea addresses_WT_ht+0x52b8, %rsi
lea addresses_UC_ht+0x10528, %rdi
nop
nop
add %r12, %r12
mov $94, %rcx
rep movsq
nop
nop
cmp $9476, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x7b8, %r15
nop
nop
nop
nop
xor $44656, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r15)
nop
nop
inc %rcx

// Store
mov $0x41c, %rbp
nop
nop
and %rsi, %rsi
movw $0x5152, (%rbp)
nop
nop
nop
nop
xor $24595, %rcx

// REPMOV
lea addresses_RW+0x147a8, %rsi
lea addresses_D+0x8e62, %rdi
nop
sub $14028, %rdx
mov $88, %rcx
rep movsw
nop
nop
and %rdx, %rdx

// REPMOV
lea addresses_A+0x1c8b8, %rsi
lea addresses_PSE+0xeaf8, %rdi
nop
nop
nop
sub $573, %rdx
mov $42, %rcx
rep movsw
nop
nop
nop
add %r14, %r14

// Load
mov $0x6b8, %rsi
nop
nop
nop
nop
add $8680, %rdx
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_RW+0x166b8, %rdi
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%rdi)
nop
and $64911, %r11

// Faulty Load
lea addresses_RW+0x166b8, %rdx
xor %rsi, %rsi
mov (%rdx), %r15
lea oracles, %r15
and $0xff, %r15
shlq $12, %r15
mov (%r15,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_PSE'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'ff': 1}
ff
*/
