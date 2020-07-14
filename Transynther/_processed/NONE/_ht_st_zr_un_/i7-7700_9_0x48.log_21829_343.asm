.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rbx
lea addresses_WC_ht+0x1b7ff, %r12
nop
nop
nop
nop
cmp $46618, %r8
movl $0x61626364, (%r12)
nop
nop
dec %r12
lea addresses_D_ht+0x1daff, %rbp
nop
nop
nop
nop
inc %rbx
mov (%rbp), %r10d
nop
nop
nop
nop
nop
inc %r10
lea addresses_D_ht+0xf1ff, %r8
nop
nop
nop
nop
inc %r12
movups (%r8), %xmm1
vpextrq $1, %xmm1, %rbx
sub %r15, %r15
lea addresses_WT_ht+0x1e5ff, %r15
clflush (%r15)
nop
nop
nop
sub %r8, %r8
movl $0x61626364, (%r15)
sub %r8, %r8
lea addresses_UC_ht+0x135ff, %r10
nop
nop
xor %rbx, %rbx
movups (%r10), %xmm5
vpextrq $0, %xmm5, %r8
inc %r10
lea addresses_D_ht+0x2133, %r8
nop
nop
cmp %rax, %rax
mov (%r8), %r12w
nop
nop
add %rbx, %rbx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rdi

// Faulty Load
lea addresses_UC+0xbdff, %r9
sub %r10, %r10
mov (%r9), %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rdi
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'2a': 1, 'ae': 1, '3c': 21, '4e': 2, '94': 1, 'de': 73, 'bc': 2, '86': 1, 'a0': 1, '92': 3, '70': 1, '74': 1, '06': 1, '02': 5, '6a': 1, '66': 1, 'a8': 2, 'e8': 2, '8e': 1, '1e': 1, '3a': 2, 'e0': 1, '64': 1, 'f6': 2, 'ca': 3, '2e': 1, '1a': 1, '52': 1, '4a': 2, '50': 1, '00': 1962, '38': 1, '47': 781, '26': 1, '8a': 2, 'be': 2, 'cc': 1, 'ff': 10215, '72': 1, 'f0': 1, '88': 2, '5e': 1, '79': 831, '12': 2, '24': 2, 'ce': 1, '7a': 1, 'd8': 1, '14': 2, 'ac': 1, '36': 2, '20': 20, 'dc': 2, '40': 87, 'fa': 1, '6e': 3, 'fc': 3, 'ba': 2, 'c2': 1, '30': 2, 'ea': 2, 'ec': 1, '54': 1, '58': 1, '98': 1, '22': 1, '53': 2925, '48': 1, 'a2': 2, 'b0': 1, 'f2': 1, '78': 2, 'aa': 1, '18': 2, '62': 2, '0c': 1, '56': 2, '9c': 1, 'c8': 4, '01': 1598, 'd4': 1, '90': 1, '46': 1524, '9a': 1, '1c': 4, '0a': 3, '60': 1670, '96': 2, '76': 2}
47 ff ff 00 53 46 00 ff ff 53 46 53 ff ff ff ff 53 ff 53 53 00 53 46 fc 00 ff 46 00 ff ff 40 00 00 ff ff ff 53 ff ff ff 01 53 5e 53 ff ff 53 ff 60 53 53 ff ff 01 ff ff 60 00 ff ff ff ff 60 46 ff ff 60 ff 53 46 ff 3c ff 01 ff ff 60 ff 46 ff 00 ff ff 01 ff 01 ff 01 00 ff ff 01 46 53 ff ff 60 ff 46 53 ff 60 ff ff 60 46 ff 79 53 53 ff ff 60 ff ff 46 53 ff ff 60 f2 47 de 53 ff ff 60 ff ff ff ff 01 ff 01 79 53 53 ff ff ff ff 01 00 ff ff 01 53 ff 53 46 ff 47 00 ff ff 60 53 ff ff ff 60 ff ff 01 ff 01 53 ff 53 ff 00 ff 01 46 ff 53 ff ff 40 47 ff ff 60 53 ff ff 60 ff 00 0a ff ff ff ff 60 ff 79 ff ff 00 53 ff 00 ff ff 00 ff 40 ff 00 79 ff 53 ff ff 00 79 ff 00 ff ff 01 60 53 00 00 ff ff 46 00 00 ff ff 60 47 53 79 ff ff 01 ff 00 ff ff 60 ff 01 ff 53 ff ff 60 ff ff 53 ff 53 ff 60 ff ff 53 00 53 47 ff 46 ff ff 60 00 ff 00 12 ff ff 47 53 ff 53 53 00 ff ff de 47 ff ff 60 53 00 ff ff 60 ff ff ff 01 53 ff ff 53 ff ff ff 01 46 ff 53 00 ff ff 46 ff ff 01 53 ff 60 ff 46 00 96 ff ff ff 53 ff 46 ff ff 01 ff 01 46 ff ff 46 ff 01 ff 01 ff 01 53 ff ff 40 53 ff 60 ff 79 ff 01 00 53 ff ff 53 ff ff 01 ff 01 ff 01 ff 01 ff 01 46 53 ff 60 46 ff ff 60 ff ff 60 ff ff ff 01 ff 01 ff 01 ff 01 ff 01 46 79 ff 60 ff 79 00 ff ff 47 ff ff 60 ff 53 ff 01 ff 60 53 79 ff ff 60 ff ff ff ff 01 48 ff ff ff 01 ff 01 53 ff 53 ff 60 ff 46 ff 60 3c ff ff 60 ff 46 ff ff ff 01 53 ff 60 ff ff 01 ff 01 79 ff ff 01 ff 01 ff 01 ff 01 ff 01 ff 60 79 ff 53 ff ff ff 40 ff 01 ff 01 00 53 46 ff ff ff 60 46 ff 01 ff 60 ff ff ff 60 79 ff 00 ff ff 60 46 00 ff ff 60 ff ff 60 47 ff 46 53 ff 46 00 53 ff ff ff ff 60 ff 47 ff 60 79 53 ff 53 ff ff ff 60 ff ff 01 46 47 53 ff ff ff 53 ff 60 ff ff 01 ff 60 ff ff 60 ff 46 ff 53 ff ff ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 ff 47 53 ff ff 60 46 ff ff ff 00 46 53 ff ff ff 01 00 ff ff 01 46 46 53 ff ff 60 53 53 ff 53 79 00 00 ff ff 60 ff 00 ff 53 ff 53 ff 60 53 ff ff 53 ff ff 53 ff ff 01 ff 01 ff ff 01 53 53 53 53 ff ff 60 53 53 47 53 ff 53 ff ff 53 ff ff 46 00 ff ff 60 ff ff 60 00 00 ff ff 47 00 00 46 53 53 79 ff 53 ff 00 ff ff ff 60 53 47 46 00 53 ff ff 60 ff 01 00 ff ff ff 00 00 ff ff 79 ff ff 60 ff ff 53 47 00 ff ff 60 ff 53 ff 46 53 ff 79 00 ff ff 60 ff ff ff 60 46 53 53 00 53 46 ff 46 ff ff ff 01 53 ff 46 ff 60 46 ff 46 53 ff ff 40 ff ff 60 53 ff 46 53 ff 00 ff ff 60 ff ff ff ff 00 53 00 ff ff ff 00 53 ff ff 01 79 53 46 ff 47 ff ff 53 00 53 ff ff 40 ff 00 ff ff 60 ff 53 ff ff 00 ff 53 46 ff 79 ff ff 60 46 ff 46 ff 47 ff ff 53 00 47 79 ff 00 ff ff 60 00 ff 00 ff ff 60 53 ff ff 60 53 ff ff 00 00 00 00 ff ff 60 53 00 53 ff ff 46 ff 60 79 53 53 ff 46 ff 01 53 ff 00 ff ff 60 53 ff ff 53 ff 60 ff 47 ff 47 ff 01 ff 60 ff ff 53 ff ff ff 60 ff 47 53 53 53 ff 53 00 86 ff ff 46 ff ff 60 ff ff ff 01 ff 01 79 53 ff ff ff 01 ff 01 ff 01 79 46 ff 00 46 00 ff ff 60 ff 53 00 ff ff ff ff 79 ff ff 47 53 53 53 53 ff ff 60 ff ff 40 ff ff ff 01 53 79 00 ff ff 60 ff ff 60 46 46 ff 53 53 46 ff 79 ff 60 ff ff ff ff ff 00 46 00 ff ff 01 ff 60 46 46 47 46 00 46 46 ff ff 60 46 ff ff 00 ff ff 60 47
*/
