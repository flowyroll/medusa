.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rdx
lea addresses_WC_ht+0xaaca, %r9
clflush (%r9)
nop
nop
cmp $21008, %r8
movb $0x61, (%r9)
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0xce7a, %r10
nop
cmp %r15, %r15
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
nop
nop
sub $24758, %r8
lea addresses_A_ht+0x7f4a, %r15
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x7aa2, %r9
nop
nop
nop
nop
nop
sub %rbx, %rbx
movb $0x61, (%r9)
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x9baa, %r10
nop
sub %r15, %r15
mov (%r10), %r9d
nop
sub $26212, %r9
lea addresses_UC_ht+0x11aa, %r10
nop
nop
xor %r14, %r14
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
dec %r10
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdx

// Store
mov $0x49fe4300000000aa, %r10
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
xor %rcx, %rcx

// Store
lea addresses_D+0x1b79c, %r9
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_UC+0x14161, %r12
nop
dec %rbp
mov $0x5152535455565758, %r10
movq %r10, (%r12)
nop
nop
nop
nop
sub %r10, %r10

// Faulty Load
mov $0x49fe4300000000aa, %r14
nop
cmp $39542, %rdx
mov (%r14), %bp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'e2': 3, '1c': 9, '96': 2, '1a': 1, 'cc': 4, '68': 3, 'a2': 2, '80': 4, 'a6': 5, 'f6': 3, 'c2': 10, '36': 1, '6a': 8, '14': 5, '3c': 3, '4e': 4, '62': 7, 'b6': 3, '50': 3, 'f4': 4, '04': 4, '30': 5, 'f8': 2, '08': 9, 'c4': 5, '58': 21066, 'c6': 5, '82': 3, 'd8': 4, '9c': 5, 'c0': 3, 'ce': 3, '94': 3, '4c': 3, '7c': 8, '0a': 3, 'd4': 5, '18': 5, 'ae': 2, '54': 2, 'ee': 5, '66': 6, '6c': 9, 'da': 9, '34': 5, 'ac': 3, 'e0': 3, '26': 1, 'dc': 6, '72': 12, '02': 2, 'a4': 2, '00': 179, '64': 6, 'ec': 4, '8e': 7, '98': 4, '10': 4, '42': 7, '7a': 4, 'b2': 7, '20': 3, 'be': 1, 'f0': 2, 'ca': 5, 'b0': 6, '5e': 5, 'f2': 5, 'c8': 1, '8c': 1, 'd0': 4, 'a0': 7, 'ea': 3, '52': 3, '48': 6, '2c': 7, '16': 6, 'bc': 7, '7e': 3, '92': 8, '32': 8, 'e8': 4, '2e': 4, '8a': 8, '2a': 6, '3e': 3, 'ba': 6, '76': 4, '38': 5, '56': 4, '3a': 5, '0e': 6, '28': 2, '60': 5, '90': 9, 'b8': 3, '4a': 6, 'de': 1, 'fe': 1, 'fa': 6, '88': 6, 'fc': 3, '84': 5, '78': 6, 'd2': 3, 'e6': 3, 'e4': 5, '22': 5, '70': 6, '40': 3, '44': 4, '24': 4, '5a': 2, '12': 7, '5c': 6, '46': 6, '1e': 2, '06': 6, 'd6': 10, '0c': 6, '9a': 9, '6e': 7, 'a8': 2, '86': 5, '74': 7, 'b4': 4, '9e': 4}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 ce 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 d6 58 58 58 58 f4 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 da 58 58 58 58 58 08 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 48 58 58 58 58 58 58 0c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 c2 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6a 58 58 58 58 58 58 58 58 58 58 58 98 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 42 58 5c 58 58 58 58 58 58 58 2e 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 ea 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 04 58 58 58 58 58 58 58 58 58 58 58 58 c2 58 bc 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 72 58 58 58 58 58 58 58 58 58 58 58 6c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 ec 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 ca 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 9c 58 58 58 58 58 58 58 58 82 58 58 58 58 58 58 58 58 58 58 58 58 58 6e 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 c6 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
