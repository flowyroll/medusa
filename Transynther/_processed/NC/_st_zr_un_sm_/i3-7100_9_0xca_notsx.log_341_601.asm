.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x3c12, %r10
nop
nop
nop
xor %rax, %rax
movw $0x6162, (%r10)
nop
xor $29612, %rsi
lea addresses_WC_ht+0x4488, %r12
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%r12), %r11w
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x2272, %r15
nop
xor $16639, %r11
movb (%r15), %r12b
nop
xor %r11, %r11
lea addresses_WC_ht+0x2c12, %rsi
lea addresses_A_ht+0x969b, %rdi
nop
nop
nop
nop
nop
cmp $8604, %r15
mov $123, %rcx
rep movsl
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x18412, %rdi
nop
nop
nop
nop
add $62294, %r15
mov (%rdi), %r12w
nop
and $33556, %r15
lea addresses_D_ht+0xfb52, %rsi
lea addresses_WC_ht+0xf432, %rdi
nop
nop
nop
nop
xor $56149, %r12
mov $5, %rcx
rep movsb
nop
xor %r11, %r11
lea addresses_UC_ht+0x1792e, %r10
nop
nop
nop
cmp $22651, %r12
mov (%r10), %rax
nop
nop
nop
add $20770, %r10
lea addresses_WC_ht+0x179f2, %rsi
lea addresses_normal_ht+0x1df43, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $74, %rcx
rep movsw
nop
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rax
push %rcx

// Store
mov $0x506ef30000000c12, %r12
clflush (%r12)
and %r10, %r10
movw $0x5152, (%r12)
and %r9, %r9

// Store
lea addresses_RW+0x13612, %r9
nop
nop
nop
nop
nop
add $33465, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movaps %xmm5, (%r9)
nop
nop
cmp $35986, %rax

// Faulty Load
mov $0x506ef30000000c12, %r10
nop
nop
cmp %rcx, %rcx
movups (%r10), %xmm5
vpextrq $0, %xmm5, %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'6d': 3, 'd6': 1, '00': 11, '52': 326}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 d6 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
