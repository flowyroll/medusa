.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x15c87, %r10
inc %r8
movb (%r10), %r11b
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x179d7, %rbp
sub %r8, %r8
mov (%rbp), %edi
nop
nop
add $61209, %rbp
lea addresses_WT_ht+0x124df, %r10
nop
xor $5059, %rcx
movb (%r10), %r8b
nop
nop
and $5240, %rbp
lea addresses_normal_ht+0x59c7, %r10
nop
xor $39490, %rcx
mov (%r10), %r11w
sub $65112, %r10
lea addresses_A_ht+0x13407, %r8
sub $42445, %r11
mov $0x6162636465666768, %r10
movq %r10, (%r8)
nop
nop
inc %rbp
lea addresses_WC_ht+0x57b7, %r11
sub %rbp, %rbp
movb (%r11), %cl
nop
nop
nop
dec %rsi
lea addresses_D_ht+0xafca, %rsi
lea addresses_WC_ht+0x29fb, %rdi
nop
nop
nop
nop
nop
sub $55194, %rax
mov $86, %rcx
rep movsl
nop
cmp %r10, %r10
lea addresses_D_ht+0xd207, %r11
nop
inc %rcx
mov (%r11), %esi
nop
nop
nop
nop
cmp $30246, %rax
lea addresses_UC_ht+0x17187, %rcx
nop
inc %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %rcx
vmovaps %ymm1, (%rcx)
nop
and %r11, %r11
lea addresses_A_ht+0xee87, %rdi
nop
nop
nop
sub %rax, %rax
mov (%rdi), %esi
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x19a87, %rdi
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x68a7, %r10
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov (%r10), %r8
nop
nop
nop
nop
nop
lfence
lea addresses_D_ht+0xf567, %rsi
lea addresses_WC_ht+0xa21f, %rdi
nop
dec %r11
mov $27, %rcx
rep movsw
nop
nop
and $16699, %r8
lea addresses_D_ht+0xf087, %rdi
nop
nop
nop
inc %r10
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rdi)
nop
inc %r10
lea addresses_UC_ht+0x154f7, %r8
nop
and %rcx, %rcx
mov (%r8), %edi
nop
nop
nop
nop
add %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rsi

// Load
lea addresses_US+0x3a7, %rbx
nop
nop
nop
nop
inc %rax
mov (%rbx), %r11d
cmp %r9, %r9

// Load
lea addresses_UC+0xf687, %r12
nop
nop
nop
nop
sub $51116, %r15
mov (%r12), %rax
nop
nop
and $21077, %rax

// Store
mov $0xa43570000000a87, %rsi
nop
nop
nop
cmp $65129, %r9
movb $0x51, (%rsi)
nop
nop
nop
nop
sub %rbx, %rbx

// Faulty Load
mov $0xa43570000000a87, %r15
nop
nop
xor %r9, %r9
mov (%r15), %eax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'4e': 3, '42': 1, '66': 1, '72': 3, '7a': 1, 'fa': 2, 'c2': 3, '24': 4, '0c': 1, '5e': 1, 'f8': 7, '9c': 4, '6a': 3, '28': 1, '36': 3, '12': 2, '86': 1, '56': 1, '96': 3, '20': 2, 'ba': 3, '26': 1, '50': 2, '0e': 5, 'e2': 1, '46': 1, 'de': 2, '04': 2, '92': 1, 'e6': 2, '16': 1, '54': 2, '88': 2, 'a0': 1, 'b6': 3, '76': 1, '2c': 3, 'cc': 2, 'f0': 2, '7c': 2, '70': 4, 'b8': 4, '51': 19804, 'a2': 4, '5c': 1, 'ee': 3, 'b2': 3, 'dc': 1, 'a8': 2, '3a': 2, 'e4': 2, '90': 2, '3e': 4, '2a': 2, 'bc': 1, '0a': 2, 'fc': 5, '60': 2, 'd8': 1, '6e': 1, '38': 1, '5a': 2, '40': 2, '08': 2, '00': 1795, '84': 1, '4c': 1, '78': 2, '14': 4, 'ce': 2, '80': 1, 'd6': 2, '9e': 2, 'f2': 1, '06': 3, '8a': 1, '64': 1, '98': 1, '1e': 3, 'd2': 2, 'da': 3, 'c8': 3, 'fe': 3, '62': 2, '58': 3, '3c': 2, '74': 3, 'b4': 3, 'c0': 4, 'f6': 2, '02': 1, 'ca': 1, '44': 3, '1a': 2, 'a4': 2, 'a6': 2, '7e': 2, 'be': 2, '32': 1, '4a': 2, 'c6': 4, '68': 3, 'd0': 6, 'd4': 5}
51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 c2 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 00 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 2c 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 5e 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 a2 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 6e 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 86 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 00 51 51 9e 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 00 51 00 51 51 00 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 de 51 51 51 51 51 51 51 51 51 51 51 51 00 76 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
