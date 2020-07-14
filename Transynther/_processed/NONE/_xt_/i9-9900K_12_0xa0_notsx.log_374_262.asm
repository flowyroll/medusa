.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rcx
lea addresses_UC_ht+0x1172c, %r10
and $51108, %r9
movups (%r10), %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
add $45502, %r11
lea addresses_WC_ht+0xd909, %r14
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r14), %r11w
nop
xor %r10, %r10
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x12629, %rdi
nop
nop
nop
and $63466, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
sub %r8, %r8

// Load
lea addresses_D+0x1e429, %r9
nop
nop
nop
nop
nop
xor %rdi, %rdi
movb (%r9), %r8b
nop
dec %rdi

// Store
lea addresses_WT+0xbba9, %rdi
nop
nop
nop
sub $36540, %rsi
movb $0x51, (%rdi)
nop
nop
and $15130, %r8

// Load
lea addresses_D+0xc511, %r9
dec %r15
mov (%r9), %r13d
nop
nop
nop
and %rdi, %rdi

// REPMOV
lea addresses_WT+0xfc29, %rsi
lea addresses_WT+0xfc29, %rdi
nop
nop
dec %rax
mov $79, %rcx
rep movsw
nop
add %r8, %r8

// Store
mov $0x31019c0000000829, %rdi
nop
nop
nop
nop
nop
add $51554, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rdi)
nop
cmp %r13, %r13

// Load
lea addresses_WC+0xc829, %rdi
nop
nop
nop
xor %rax, %rax
movb (%rdi), %r9b
nop
nop
nop
inc %r13

// Load
mov $0x59d7b0000000011, %r9
nop
nop
nop
cmp $4169, %r8
mov (%r9), %rcx
nop
add $14671, %rcx

// Store
lea addresses_A+0x12689, %r13
nop
xor $21515, %r8
movb $0x51, (%r13)
nop
nop
nop
nop
nop
cmp $5777, %r9

// Faulty Load
lea addresses_WT+0xfc29, %r15
nop
nop
nop
nop
nop
dec %rcx
mov (%r15), %esi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'39': 374}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
