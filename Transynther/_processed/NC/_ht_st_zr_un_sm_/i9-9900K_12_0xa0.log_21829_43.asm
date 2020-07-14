.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x4704, %rax
nop
nop
and $13501, %r9
mov $0x6162636465666768, %r8
movq %r8, (%rax)
nop
nop
dec %rsi
lea addresses_UC_ht+0x1ec84, %r15
nop
nop
nop
nop
nop
sub $2278, %r11
mov $0x6162636465666768, %r13
movq %r13, (%r15)
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x10fc4, %rsi
lea addresses_UC_ht+0xa9c4, %rdi
nop
nop
add $42671, %r11
mov $8, %rcx
rep movsl
dec %r15
lea addresses_WC_ht+0x1b5c4, %r8
nop
nop
nop
nop
and $12779, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x2b04, %r13
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
nop
nop
cmp $18614, %r11
lea addresses_WC_ht+0x6044, %rdi
add $59868, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
nop
nop
and $63947, %rsi
lea addresses_WT_ht+0x1adc4, %rsi
lea addresses_D_ht+0x12dc4, %rdi
and %r11, %r11
mov $90, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $36857, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_US+0x1c704, %r15
inc %r8
movl $0x51525354, (%r15)
nop
nop
sub %r12, %r12

// Store
lea addresses_UC+0x1a3b0, %rax
nop
nop
nop
xor $55528, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
dec %rax

// Store
lea addresses_WT+0x65c4, %rbx
nop
nop
nop
nop
nop
sub %rdx, %rdx
movw $0x5152, (%rbx)
nop
cmp $15517, %r12

// Store
mov $0x19958b0000000dc4, %rcx
nop
cmp $58026, %r12
movw $0x5152, (%rcx)
nop
nop
nop
nop
add $1145, %rax

// Store
lea addresses_WT+0xe9c4, %rdx
nop
nop
nop
nop
nop
and $40047, %rbx
mov $0x5152535455565758, %r12
movq %r12, (%rdx)
nop
nop
nop
nop
xor $25605, %r12

// Faulty Load
mov $0x19958b0000000dc4, %r12
and $742, %rcx
movb (%r12), %r8b
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 8}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'0a': 3, 'b2': 3, '4e': 1, 'e6': 6, 'bc': 2, '48': 2, '32': 3, 'fc': 5, '4c': 1, '42': 8, '20': 3, '90': 4, '3e': 5, '1e': 4, '3a': 3, 'b6': 3, '46': 4, '6c': 3, '5c': 2, 'ca': 2, 'de': 5, 'd2': 2, 'd8': 4, '60': 2, 'f0': 4, '56': 1, '50': 1, '5a': 6, '64': 1, '14': 4, '40': 2, 'd0': 4, '04': 1, '16': 1, 'a0': 1, '28': 2, 'ac': 1, '98': 4, '36': 6, '8e': 1, 'f4': 3, '7a': 5, '44': 3, '2a': 1, '34': 2, '24': 6, '0c': 2, 'ea': 3, 'da': 6, 'c0': 3, '12': 2, '76': 5, '4a': 2, 'ba': 1, '52': 21359, 'd4': 4, '6a': 1, '70': 3, '1c': 2, 'fe': 2, 'e0': 1, 'a6': 3, 'ee': 4, '86': 2, '58': 5, '02': 1, '5e': 2, '00': 128, '74': 4, '0e': 4, '7c': 3, 'b8': 1, '6e': 4, 'e8': 2, 'c2': 4, '18': 5, '3c': 1, 'f6': 1, 'fa': 1, '2c': 4, 'c6': 6, 'dc': 5, '72': 1, 'f8': 1, '54': 2, '8c': 3, '22': 5, '68': 4, '62': 3, '9e': 3, 'b4': 3, '84': 4, 'e4': 1, '88': 4, '8a': 5, '80': 4, '08': 2, '1a': 3, 'c8': 2, '10': 1, 'a2': 4, 'ce': 4, 'f2': 1, '26': 3, '06': 1, 'be': 2, 'd6': 1, 'cc': 2, 'b0': 2, '2e': 4, '30': 3, 'a8': 1, '78': 2, '9c': 3, '66': 4, '82': 3, '92': 3, '38': 2, '9a': 1, 'ec': 4, 'c4': 2}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 62 52 52 52 52 3a 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 f0 52 52 52 52 52 52 52 52 52 52 52 52 52 52 d0 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 c6 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 82 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6e 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 b8 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 84 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 36 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 04 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 ee 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6c 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 a2 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 ce 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 90 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 24 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 92 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 36 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 c0 52 52
*/
