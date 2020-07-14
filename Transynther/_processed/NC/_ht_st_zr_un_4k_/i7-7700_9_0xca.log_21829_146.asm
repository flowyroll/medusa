.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19a65, %r9
nop
nop
nop
nop
nop
sub %r13, %r13
mov (%r9), %ebx
nop
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x647a, %rsi
lea addresses_WT_ht+0x1989a, %rdi
nop
cmp $1620, %rax
mov $60, %rcx
rep movsb
nop
cmp $27922, %rcx
lea addresses_A_ht+0x1467a, %rsi
lea addresses_UC_ht+0x7b1a, %rdi
nop
nop
nop
and $31404, %r10
mov $42, %rcx
rep movsl
lfence
lea addresses_normal_ht+0x1707a, %r13
nop
nop
nop
nop
nop
cmp $36364, %r10
movb $0x61, (%r13)
nop
add $60713, %rsi
lea addresses_A_ht+0x1e3da, %rbx
nop
lfence
mov (%rbx), %edi
nop
nop
nop
nop
and $40147, %rax
lea addresses_UC_ht+0x1235a, %r10
clflush (%r10)
nop
nop
nop
nop
nop
xor $37530, %rcx
movw $0x6162, (%r10)
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x587a, %r13
and $707, %r9
mov $0x6162636465666768, %rbx
movq %rbx, (%r13)
nop
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0xb2e, %r13
nop
nop
cmp %r10, %r10
vmovups (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
inc %rdi
lea addresses_WT_ht+0x14a3a, %rdi
nop
sub $18088, %rax
movw $0x6162, (%rdi)
nop
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %r9
push %rdi

// Store
lea addresses_A+0x99fa, %rdi
nop
sub $24696, %r15
movl $0x51525354, (%rdi)
nop
add %r9, %r9

// Store
lea addresses_RW+0x1aeaa, %r12
clflush (%r12)
nop
add %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%r12)
nop
nop
xor $57211, %r14

// Store
mov $0x7a, %rdi
nop
nop
nop
nop
cmp $49257, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rdi)
sub $43949, %r15

// Faulty Load
mov $0x154c0f000000007a, %r9
nop
cmp $26387, %r13
mov (%r9), %r15w
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_WT_ht'}}
{'4c': 4, 'f2': 4, '06': 2, '66': 3, '08': 3, '54': 5, '8e': 4, '36': 3, 'b8': 3, 'dc': 2, 'c0': 1, 'e6': 3, '1c': 2, 'b6': 3, '3c': 3, '7c': 4, '44': 2, '4a': 2, '52': 3, '5c': 3, '82': 4, '84': 2, 'de': 4, 'd0': 1, '34': 4, 'fa': 5, '02': 1, '90': 2, '86': 1, '6c': 2, 'c4': 4, 'cc': 4, 'a2': 3, 'f8': 2, '88': 3, '80': 2, 'da': 2, 'd8': 4, '22': 1, '1a': 3, '9a': 3, 'ee': 2, 'e2': 7, '46': 2, '9c': 1, '38': 2, '56': 2, '2e': 3, '0a': 3, 'bc': 1, '32': 3, '10': 5, '8a': 6, '64': 4, 'f0': 3, '00': 269, 'f4': 2, '9e': 2, 'fc': 1, 'c6': 6, '50': 2, '2c': 2, 'd2': 2, '6e': 2, '30': 2, '58': 21234, '7a': 3, 'd4': 2, '28': 3, 'e4': 1, '70': 2, '78': 2, 'ca': 3, 'ce': 1, 'b4': 2, 'c8': 1, '04': 2, 'e0': 4, '72': 3, '92': 1, '3a': 5, 'aa': 1, 'be': 3, '62': 3, 'ec': 1, '98': 2, 'ac': 4, '48': 1, '1e': 6, 'a0': 4, '96': 3, '76': 2, '24': 3, '42': 1, '68': 1, '40': 7, '18': 2, '60': 4, '16': 3, 'ea': 1, 'd6': 2, '2a': 4, 'c2': 2, '0e': 7, 'a8': 2, 'fe': 5, '0c': 3, 'b2': 2, '20': 4, 'ba': 1, 'b0': 4, '8c': 3, '74': 2, 'a4': 2, 'e8': 5, '7e': 2, '12': 3, '4e': 3, 'a6': 2}
58 58 58 44 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 0a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 5c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 a0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 de 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 8a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 d4 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 06 58 58 58 58 58 58 58 58 58 58 d8 58 58 58 58 58 58 58 58 58 d2 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 34 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
