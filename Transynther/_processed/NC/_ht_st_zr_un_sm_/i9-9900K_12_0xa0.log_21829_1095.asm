.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xa6cf, %rsi
lea addresses_A_ht+0x1bad3, %rdi
nop
and $37753, %r8
mov $67, %rcx
rep movsb
nop
nop
inc %r9
lea addresses_WT_ht+0x14d0e, %r13
nop
nop
nop
nop
nop
add $63451, %rdi
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
sub %rdi, %rdi
lea addresses_A_ht+0x134d3, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov (%rdi), %r8
nop
and %rsi, %rsi
lea addresses_WC_ht+0x69e3, %r9
nop
nop
nop
nop
and %rsi, %rsi
movb $0x61, (%r9)
nop
dec %rcx
lea addresses_A_ht+0x61d3, %rsi
lea addresses_normal_ht+0x1ce23, %rdi
nop
nop
sub $12928, %r12
mov $60, %rcx
rep movsl
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rdi

// Store
lea addresses_UC+0x1d7b3, %r8
nop
nop
inc %rbx
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_UC+0x88b, %r12
clflush (%r12)
nop
nop
inc %rax
movw $0x5152, (%r12)
cmp %r12, %r12

// Store
lea addresses_PSE+0x87b5, %r10
clflush (%r10)
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movups %xmm4, (%r10)
nop
nop
nop
nop
xor $17321, %rbx

// Store
mov $0x78640400000009d3, %r8
nop
nop
and $49336, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
add $53383, %r8

// Faulty Load
mov $0x78640400000009d3, %rax
xor %r8, %r8
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'a4': 5, '0a': 3, 'b8': 1, 'b2': 6, '4e': 9, 'bc': 6, '48': 3, 'b4': 3, '20': 6, '4c': 4, '42': 6, '90': 3, '3e': 1, '1e': 4, '3a': 3, 'b6': 4, 'd6': 9, '96': 6, '6c': 7, '32': 7, 'ca': 7, 'de': 11, 'd2': 5, 'd8': 8, '94': 5, 'f0': 6, '0c': 4, '50': 4, '46': 4, '02': 3, '14': 11, '6a': 5, '40': 1, 'd0': 4, '04': 4, '16': 7, 'a0': 4, 'b0': 2, 'ac': 7, '98': 5, '5c': 2, '8e': 9, 'f4': 10, '7a': 3, '44': 4, '2a': 6, '34': 2, '86': 4, '24': 7, 'aa': 2, '36': 1, '56': 7, 'ea': 12, 'da': 7, 'c4': 4, '12': 2, '4a': 5, '30': 1, 'ba': 5, '52': 5, 'd4': 10, 'fc': 4, '5a': 4, '1c': 4, 'fe': 1, 'e0': 10, 'a6': 4, 'ee': 10, '76': 8, '58': 20836, '64': 2, '5e': 3, '00': 391, '7c': 6, '0e': 7, '74': 6, '70': 2, '6e': 5, 'e8': 11, 'c2': 5, '18': 8, '7e': 2, 'e2': 7, 'f6': 3, 'fa': 1, '2c': 6, 'c6': 8, 'dc': 4, '72': 4, 'f8': 4, '54': 3, '22': 7, '66': 1, '68': 1, '62': 7, 'ae': 5, '9e': 2, '60': 1, 'c0': 3, 'e4': 2, '88': 2, '8c': 5, '80': 4, '08': 4, '1a': 6, 'c8': 1, '10': 2, 'a2': 4, 'e6': 5, 'f2': 4, '26': 5, '06': 5, '3c': 3, 'be': 7, 'cc': 10, '28': 5, '2e': 3, '84': 3, 'a8': 7, '78': 4, '9c': 4, '8a': 3, '82': 2, '38': 3, '9a': 4, 'ec': 5, 'ce': 10}
58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e2 58 58 58 58 58 58 58 58 58 58 58 58 58 c8 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 74 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 e8 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 4a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 cc 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 88 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 08 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 be 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 06 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 58 58 64 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 e6 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 32 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 2a 58 58 58 58 58 58 58 58 58 58 3e 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 10 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 2e 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 4a 58 58 58 58 58 58 58 58 58 ce 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 0e 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 0e 58 58 58 58 58 58 58 58 58 cc ea 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 58 58 58 22 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
