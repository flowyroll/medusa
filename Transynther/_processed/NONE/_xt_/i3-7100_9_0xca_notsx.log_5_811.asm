.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbx
push %rcx
push %rsi
lea addresses_WC_ht+0x124ad, %r10
sub $30217, %r9
mov (%r10), %r12
nop
sub $65024, %r12
lea addresses_A_ht+0x1e8ad, %rbx
nop
nop
nop
nop
nop
sub $702, %rcx
movw $0x6162, (%rbx)
nop
nop
add $44747, %r10
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x1ecad, %rsi
lea addresses_WT+0x1ecad, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $65, %rcx
rep movsw
nop
nop
nop
cmp $50036, %rcx

// Store
lea addresses_WT+0x1ecad, %rsi
nop
nop
nop
sub $28914, %r10
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0x1412d, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
nop
nop
nop
nop
xor $3049, %rcx

// Load
lea addresses_US+0xf7d, %r11
nop
nop
nop
sub %rsi, %rsi
movb (%r11), %cl
nop
nop
and $46638, %r15

// Store
lea addresses_UC+0x1722d, %r15
nop
nop
xor $7125, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r15)
nop
nop
cmp $53844, %rdi

// Faulty Load
lea addresses_WT+0x1ecad, %r15
nop
nop
nop
nop
xor $1218, %r10
vmovups (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'39': 5}
39 39 39 39 39
*/
