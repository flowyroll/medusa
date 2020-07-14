.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rbp
push %rbx
lea addresses_UC_ht+0x6901, %rbp
clflush (%rbp)
add %rbx, %rbx
mov (%rbp), %r12
nop
nop
nop
add $44471, %r15
pop %rbx
pop %rbp
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x1f2cd, %rsi
lea addresses_normal+0x1c2cd, %rdi
clflush (%rsi)
nop
nop
nop
cmp %rdx, %rdx
mov $19, %rcx
rep movsq
nop
nop
nop
nop
cmp $64470, %r14

// REPMOV
lea addresses_WT+0x188cd, %rsi
lea addresses_PSE+0x127f, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $34, %rcx
rep movsq
nop
cmp $21617, %rdx

// Store
lea addresses_WT+0x1d32d, %r11
nop
nop
xor %rsi, %rsi
movw $0x5152, (%r11)
add $49970, %r14

// Load
lea addresses_normal+0x1e9cd, %rdi
nop
nop
add %rcx, %rcx
movb (%rdi), %r14b
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
mov $0x606c47000000088d, %rdx
nop
sub $59292, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_RW+0x9cd5, %rdi
nop
nop
nop
nop
xor $28090, %rsi
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r11
nop
nop
xor %rcx, %rcx

// Store
lea addresses_A+0xc5c8, %rsi
nop
add $4230, %rdx
movb $0x51, (%rsi)
nop
nop
xor $58516, %r11

// Store
lea addresses_PSE+0x19ccd, %r9
and %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r9)
dec %rsi

// Load
lea addresses_normal+0xeacd, %rcx
nop
nop
nop
nop
nop
dec %r9
mov (%rcx), %edi
nop
nop
nop
nop
dec %r14

// Faulty Load
lea addresses_PSE+0x19ccd, %r9
clflush (%r9)
nop
nop
dec %rsi
mov (%r9), %edi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'58': 9}
58 58 58 58 58 58 58 58 58
*/
