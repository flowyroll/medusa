.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x15a2f, %rsi
lea addresses_A_ht+0x16baf, %rdi
nop
nop
xor $18723, %r10
mov $82, %rcx
rep movsq
nop
nop
nop
nop
nop
add $55669, %r14
lea addresses_WT_ht+0x10caf, %r15
nop
xor $12910, %r12
movw $0x6162, (%r15)
nop
nop
nop
nop
cmp $57372, %rsi
lea addresses_A_ht+0x1ecaf, %r15
nop
nop
nop
inc %r14
movb (%r15), %cl
nop
inc %r10
lea addresses_A_ht+0x14eef, %r15
nop
nop
nop
and %rcx, %rcx
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x14caf, %rcx
nop
nop
nop
dec %r15
mov (%rcx), %r14
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x1d12f, %r15
add %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
cmp %rdi, %rdi
lea addresses_UC_ht+0x9741, %rcx
cmp $51378, %r12
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x1abdf, %r12
nop
nop
and %r14, %r14
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
inc %r15
lea addresses_normal_ht+0x11aaf, %r10
nop
nop
nop
cmp $43405, %r12
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm7
vpextrq $0, %xmm7, %rdi
nop
cmp $43358, %r10
lea addresses_A_ht+0x4d2f, %r14
nop
inc %r15
movw $0x6162, (%r14)
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0xf23f, %rdi
nop
nop
nop
nop
and %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
and $48818, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rax
push %rsi

// Store
lea addresses_UC+0x1ecaf, %r12
nop
nop
nop
sub $24048, %r8
movw $0x5152, (%r12)
nop
nop
nop
dec %r8

// Load
mov $0x2e06780000000aaf, %r11
nop
sub %rsi, %rsi
mov (%r11), %r12
nop
nop
nop
dec %r13

// Load
lea addresses_normal+0x13d6f, %r12
nop
nop
cmp %r13, %r13
mov (%r12), %r11w
sub $33522, %r15

// Store
lea addresses_A+0xee6c, %r11
nop
nop
nop
nop
cmp $28316, %r13
movl $0x51525354, (%r11)
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_PSE+0x1aeaf, %r13
nop
nop
xor $3851, %r12
movl $0x51525354, (%r13)
nop
nop
cmp $18439, %rax

// Faulty Load
lea addresses_WC+0x14caf, %rsi
clflush (%rsi)
sub $14880, %r12
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r11
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rsi
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'0a': 169, 'b0': 329, '5a': 1, 'b2': 1, '56': 50, 'e0': 4, 'dc': 1, 'ee': 1, '5e': 461, '5c': 1, '00': 1802, '4c': 100, '7c': 2, 'b8': 1, '6e': 2, 'e8': 3, '3e': 69, '18': 1, 'a0': 1, 'd6': 1, 'f6': 537, 'ec': 1, '96': 1, '4e': 359, '6c': 92, '72': 3908, 'de': 1, 'd2': 45, 'd8': 1, '50': 64, '94': 66, 'f0': 2, '0c': 44, '06': 1, '22': 177, '46': 1, '80': 1, '1c': 92, '40': 1, 'e4': 2, '8a': 1, '04': 68, '08': 2648, '1a': 1, 'c8': 265, '10': 1, '98': 92, 'a2': 273, 'ff': 4720, '2e': 142, '8e': 1, '7a': 1335, '44': 1, 'aa': 1564, '24': 4, 'ae': 47, '79': 1596, '36': 1, '9c': 1, 'ea': 640, 'c0': 24, '82': 5, '92': 2, '4a': 1}
04 10 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 72 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 00 04 72 04 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 ff 08 79 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 d2 00 79 04 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 ff 0a 79 00 72 04 ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 00 72 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 72 79 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 00 98 08 ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a ff 0a 72 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 00 79 08 72 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 00 79 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e
*/
