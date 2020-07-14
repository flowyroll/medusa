.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1060, %rbp
cmp $55340, %rax
movb $0x61, (%rbp)
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x12cc, %rsi
lea addresses_A_ht+0x791c, %rdi
clflush (%rdi)
sub $32110, %r11
mov $45, %rcx
rep movsq
inc %r11
lea addresses_normal_ht+0x1c0d6, %rsi
lea addresses_A_ht+0x16be8, %rdi
nop
nop
nop
add $36173, %r12
mov $38, %rcx
rep movsb
cmp %rdi, %rdi
lea addresses_normal_ht+0x85bc, %rsi
lea addresses_WT_ht+0xd43c, %rdi
and %r11, %r11
mov $48, %rcx
rep movsl
nop
nop
nop
nop
cmp $51630, %rax
lea addresses_A_ht+0x5c3c, %rbp
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
nop
cmp $24023, %rcx
lea addresses_WC_ht+0x1673c, %rsi
lea addresses_D_ht+0x1ac3c, %rdi
dec %r12
mov $27, %rcx
rep movsq
and $48973, %rsi
lea addresses_UC_ht+0xc67c, %rsi
xor $53897, %rdx
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add $59956, %rdi
lea addresses_normal_ht+0x143c, %rsi
lea addresses_WT_ht+0xb3c, %rdi
and $4780, %rbp
mov $80, %rcx
rep movsw
sub $12916, %r11
lea addresses_A_ht+0x503c, %rsi
lea addresses_WC_ht+0x1144c, %rdi
nop
nop
nop
nop
xor $29023, %rbp
mov $40, %rcx
rep movsq
nop
nop
nop
nop
nop
add $10055, %rax
lea addresses_normal_ht+0xf03c, %rbp
nop
nop
cmp $53238, %rsi
movl $0x61626364, (%rbp)
nop
nop
nop
nop
xor %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_normal+0x1bc3c, %rdx
nop
nop
dec %r15
mov $0x5152535455565758, %r14
movq %r14, (%rdx)
nop
nop
nop
dec %rbx

// Store
lea addresses_UC+0x19c4a, %rbp
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovaps %ymm7, (%rbp)
sub %r15, %r15

// Store
lea addresses_WC+0x186b4, %r15
nop
nop
nop
inc %rax
movw $0x5152, (%r15)
add $17756, %rdx

// Store
mov $0x6ae1bc000000043c, %r8
sub $17147, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r8)
sub $47109, %rax

// Faulty Load
mov $0x6ae1bc000000043c, %rax
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%rax), %r8d
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'4c': 2, 'f2': 1, '1c': 2, '66': 2, '96': 3, '54': 4, '8e': 5, '36': 6, 'b8': 2, 'dc': 2, 'c0': 2, 'e6': 3, '94': 1, '3c': 5, '7c': 2, '44': 1, '40': 3, '52': 5, '5c': 3, '82': 4, '84': 2, 'de': 4, 'd4': 3, 'd0': 3, '34': 6, 'fa': 6, '6a': 3, '02': 1, '90': 1, '86': 2, '6c': 4, 'c4': 5, 'cc': 2, 'be': 3, '88': 4, '80': 4, 'b4': 2, 'da': 1, 'd8': 1, '22': 2, '1a': 4, '9a': 4, 'd2': 1, 'ee': 3, 'e2': 2, '46': 1, '26': 1, '9c': 3, '38': 2, '0a': 5, 'bc': 3, '18': 4, '10': 3, '8a': 1, '98': 4, 'f0': 4, '00': 1256, '9e': 2, 'fc': 3, 'c6': 3, '50': 5, '2c': 3, 'ae': 1, '4e': 3, '6e': 3, '30': 3, 'f6': 2, '58': 20260, 'b0': 1, 'b6': 4, 'e4': 3, '70': 1, '78': 4, '5e': 3, 'ce': 3, '28': 1, 'c8': 1, '04': 2, 'a4': 4, '92': 4, '3a': 5, 'aa': 2, '24': 6, 'ec': 3, '64': 1, 'ac': 1, 'a0': 3, '56': 1, '76': 1, '62': 4, '0e': 3, '68': 5, '4a': 3, '32': 2, '60': 5, '16': 1, 'ea': 3, 'd6': 4, '2a': 2, 'c2': 2, '42': 4, 'a8': 4, '0c': 1, 'ca': 3, '20': 2, 'ba': 4, '08': 2, '8c': 2, '74': 2, '3e': 1, 'e8': 2, '7e': 3, '12': 2, 'a6': 2, '14': 1}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 b8 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 5e 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 ea 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 9c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 08 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 3e 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 fa 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 c2 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 bc 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 34 58 58 58 58 58 58 58 58 58 68 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58
*/
