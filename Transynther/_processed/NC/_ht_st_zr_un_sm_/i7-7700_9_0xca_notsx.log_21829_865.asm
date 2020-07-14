.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xf487, %rsi
lea addresses_D_ht+0x287, %rdi
nop
inc %r9
mov $42, %rcx
rep movsq
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x17687, %rsi
nop
nop
nop
cmp $7845, %rdx
movb (%rsi), %r11b
nop
nop
nop
nop
sub $52938, %rcx
lea addresses_normal_ht+0xe487, %rax
cmp $31278, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
nop
sub $57667, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_UC+0x28c7, %rdi
and %r14, %r14
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
nop
and %r10, %r10

// Store
mov $0x28f94f0000000087, %rdx
xor %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movntdq %xmm6, (%rdx)
nop
sub $42221, %r8

// Load
mov $0x7680660000000487, %rdi
and $11901, %rdx
mov (%rdi), %rcx
nop
sub %r10, %r10

// Store
mov $0x6046d60000000087, %rdx
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, (%rdx)
nop
xor $1357, %rcx

// Faulty Load
mov $0x6046d60000000087, %rdi
nop
nop
nop
and %rcx, %rcx
mov (%rdi), %edx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'34': 4, '4e': 2, '42': 1, '66': 2, '72': 1, '7a': 1, 'fa': 2, 'c2': 1, '24': 2, '0c': 1, '5e': 1, '02': 1, 'b0': 3, '9c': 2, '6a': 3, '36': 1, '12': 3, '86': 1, '96': 1, '76': 2, 'ba': 1, '00': 5311, 'ea': 2, 'ae': 3, 'ac': 2, 'e6': 1, '16': 3, '2e': 3, '82': 1, '54': 3, 'a0': 1, '20': 3, 'e0': 1, 'c4': 1, '98': 1, 'aa': 2, '70': 1, '6c': 2, 'b8': 2, 'a2': 2, '5c': 1, 'd8': 1, 'b2': 2, '1e': 2, 'a8': 3, '3a': 1, 'cc': 3, '2a': 1, '3e': 1, 'bc': 1, '60': 3, 'ee': 3, '6e': 1, '38': 1, 'd6': 1, '10': 2, '6d': 110, '4c': 2, 'f8': 1, '14': 3, '32': 2, '80': 2, '40': 1, '9e': 2, '46': 1, '06': 1, '8a': 1, '64': 3, '30': 1, 'dc': 3, 'da': 2, '22': 2, 'c6': 1, 'fe': 2, '18': 2, '9a': 4, '58': 16227, '3c': 2, '74': 7, '68': 1, '1c': 1, 'c0': 2, '26': 2, 'de': 1, '44': 1, 'ec': 3, '92': 4, '1a': 3, '8e': 2, '7c': 1, '7e': 3, 'be': 1, 'ce': 2, '4a': 4, '2c': 1, 'b4': 1, '94': 1, '48': 1, 'd4': 4}
58 58 00 58 58 58 58 58 00 00 58 58 00 58 32 58 58 00 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 4a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 6d 58 58 00 58 58 58 00 58 58 58 58 42 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 4c 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 54 58 00 58 58 58 58 00 58 58 00 58 58 58 00 58 00 58 00 58 58 10 00 58 00 58 58 58 58 58 00 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 00 00 00 58 58 00 58 58 58 ae 58 00 00 58 4a 00 58 00 58 58 58 58 58 6d 00 58 58 58 58 58 00 58 58 00 00 58 58 00 00 58 58 00 58 58 58 58 00 00 58 00 58 58 00 58 58 00 00 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 00 58 58 00 58 58 58 00 58 00 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 6d 58 00 58 58 58 58 00 58 00 58 6d 58 00 58 00 58 58 58 58 58 00 58 00 58 00 00 58 58 58 58 00 58 58 00 58 00 00 58 58 58 58 00 58 00 00 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 00 58 58 58 58 58 00 58 00 00 00 58 00 00 58 58 58 58 58 58 58 58 00 58 00 58 00 58 00 58 58 ec 00 58 00 58 58 58 58 00 58 58 58 58 58 58 6d 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 00 58 58 7c 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 58 00 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 6d 00 00 58 58 00 58 58 58 58 58 00 58 58 00 00 58 58 64 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 00 00 58 00 58 58 00 58 00 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 00 58 58 58 00 00 00 58 58 58 58 58 58 58 00 00 00 00 58 00 00 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 5c 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 00 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 4c 58 00 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 64 58 58 58 00 6d 00 00 58 58 58 58 58 58 58 00 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 00 00 58 58 00 58 58 58
*/
