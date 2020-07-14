.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x19b7b, %rbx
nop
nop
nop
nop
sub %rax, %rax
movb (%rbx), %dl
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1c267, %r12
nop
nop
cmp $1518, %r10
movups (%r12), %xmm7
vpextrq $0, %xmm7, %rbx
xor %r10, %r10
lea addresses_WT_ht+0x15efb, %rcx
nop
sub $22751, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
nop
sub $25724, %rcx
lea addresses_normal_ht+0x13d7b, %rax
clflush (%rax)
xor $49964, %r10
mov (%rax), %rsi
nop
nop
nop
nop
add $17814, %rbx
lea addresses_A_ht+0x109e3, %r12
nop
nop
and %rsi, %rsi
movl $0x61626364, (%r12)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x2e3b, %r12
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r12)
cmp %r10, %r10
lea addresses_A_ht+0xe29b, %rsi
lea addresses_A_ht+0x597b, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $52, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x17774, %rbx
nop
nop
nop
nop
dec %rax
movw $0x6162, (%rbx)
sub %rsi, %rsi
lea addresses_A_ht+0x7b, %r12
nop
nop
nop
nop
cmp $31111, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%r12)
nop
xor $34930, %rbx
lea addresses_A_ht+0x597b, %rax
clflush (%rax)
add %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
and $0xffffffffffffffc0, %rax
movntdq %xmm6, (%rax)
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x1b30f, %rax
nop
nop
xor %rbx, %rbx
mov (%rax), %esi
nop
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x857b, %rsi
lea addresses_WT_ht+0x77b, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $68, %rcx
rep movsq
nop
nop
nop
nop
nop
and $54876, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rcx
push %rsi

// Faulty Load
lea addresses_WT+0x17b, %r12
nop
nop
xor $37393, %r14
mov (%r12), %rsi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}}
{'4c': 3, 'f2': 3, '1c': 5, '66': 2, 'de': 149, '8e': 2, '3e': 3, 'b8': 5, 'dc': 2, 'c0': 3, 'e6': 4, '06': 4, '5a': 1, '3c': 16, 'b0': 4, '44': 15, '4a': 3, '52': 2, 'ca': 2, '82': 6, '54': 3, 'd0': 2, '34': 3, 'fa': 7, '6a': 2, '02': 2, '90': 2, '86': 4, '6c': 4, 'c4': 4, 'cc': 7, 'a2': 5, 'be': 4, '53': 2015, '36': 1, '80': 3, 'b2': 1, 'da': 1, 'd8': 1, '22': 4, '1a': 3, '9a': 4, 'd2': 2, 'ee': 2, 'e2': 4, '46': 3, '26': 2, '38': 5, '64': 3, '2e': 2, 'd4': 2, 'bc': 5, '32': 4, '10': 2320, '8a': 3, 'ec': 1, 'f0': 1, '00': 1238, 'f4': 3, '9e': 1, 'fc': 1, 'c6': 3, '50': 2, '2c': 3, 'ae': 1, '20': 1, '6e': 3, '30': 2, 'f6': 7, 'ff': 11542, '58': 3, '7a': 5, 'f8': 2, '7c': 3, '28': 1, 'e4': 4, 'a0': 3, '78': 6, '5e': 3, 'b4': 2, '49': 2488, 'c8': 7, 'e0': 1, '72': 2, '92': 1, '3a': 4, 'aa': 5, '01': 274, '98': 2, 'ac': 3, '48': 62, '70': 3, 'ce': 2, '76': 6, '24': 6, '0a': 1, '0e': 3, '68': 1, '40': 2, '18': 1, '60': 1, '16': 3, 'ea': 1, 'd6': 1, '2a': 3, 'c2': 2, '42': 5, 'a8': 3, '45': 1383, 'fe': 2, '0c': 2, '5c': 3, '4e': 3, 'ba': 1, '08': 2, '8c': 4, '74': 4, 'a4': 3, 'e8': 3, '7e': 2, '12': 1, 'a6': 7, '14': 2}
ff 53 ff ff 10 ff 10 53 ff 10 ff ff ff 01 ff 10 53 ff 10 53 ff de 53 53 ff ff ff ff ff 10 53 ff ff ff ff ff 01 ff 01 49 53 49 ff 45 49 ff ff 10 53 ff ff 45 ff ff ff ff 49 ff 01 ff 49 ff 00 ff de 49 ff ff 10 ff ff 10 ff 00 ff ff ff ff 10 ff ff ff 49 49 49 49 ff ff ff 10 10 49 ff 10 00 45 53 53 ff 49 ff 45 53 53 ff ff ff ff 00 ff ff 45 ff ff 10 53 ff 01 ff 49 ff 10 53 ff 49 ff ff 53 ff 10 ff 49 00 ff ff 10 ff 10 ff 53 ff ff ff ff 49 53 49 00 ff ff ff ff 10 ff 10 00 45 53 ff ff ff ff ff ff ff 10 45 00 49 ff 01 ff 10 45 ff ff 10 49 53 ff 49 49 00 ff 45 ff 49 00 49 ff 10 49 ff ff ff ff ff 00 ff ff ff 10 ff 10 45 53 53 ff ff ff ff ff 49 49 49 ff ff 10 ff 10 00 ff 64 53 38 53 53 53 ff 45 ff 00 49 ff 10 ff ff ff 10 49 ff 10 53 ff 45 ff 49 53 ff ff ff 49 ff ff ff ff ff 10 53 ff 10 de 49 ff ff ff 00 ff 00 ff 49 ff 49 00 24 ff 49 00 ff 10 ff ff 45 ff 00 ff 45 ff ff 10 53 53 ff 10 53 ff ff 53 ff ff ff ff 00 ff ff 00 ff 00 ff 00 ff 10 ff 10 53 ff ff 49 ff ff ff 00 ff 01 53 49 45 ff 10 49 ff 45 45 ff ff 49 45 49 49 ff ff 49 3c 53 ff 00 ff ff ff 00 ff 00 53 00 ff ff ff 8c 49 ff 45 ff ff 00 49 ff ff 10 ff ff 45 00 70 49 ff ff ff 10 53 ff ff ff ff 10 49 ff ff ff ff 49 49 53 ff 53 00 49 00 ff 10 53 53 ff ff 10 ff 49 53 49 ff ff 49 ff 45 ff ff ff 49 ff 10 ff 10 53 ff ff 00 49 ff ff 10 45 ff 49 45 ff ff ff ff 45 e4 53 53 ff ff ff ff 10 b4 49 ff 45 49 ff ff ff ff ff 49 ff ff de ff ff ff ff 49 53 ff ff ff ff ff ff 00 49 49 45 ff 10 ff 10 ff 45 ff ff 10 53 ff 10 53 ff ff ff 10 ff ff ff 00 49 ff 10 de ff 49 ff ff 49 ff ff ff 10 ff 10 53 49 ff 49 45 ff 45 ff 49 53 ff ff ff 45 53 ff ff 10 49 53 ff ff 49 ff de ff ff 10 ff ff 45 ff 00 ff ff 10 ff 49 ff ff 10 53 49 53 ff ff 45 53 ff ff 00 53 53 ff ff 49 ff ff ff 49 ff ff 00 ff 10 ff 10 ff ff 10 ff 00 ff ff ff 49 53 ff ff ff 00 ff 10 53 30 53 53 49 ff 53 49 ff 53 ff 10 ff 10 53 49 53 ff ff 7a 49 49 53 ff ff 53 ff ff 10 45 53 ff ff ff 49 ff ff 53 ff ff ff 45 00 ff 10 53 ff 10 ff 10 ff ff 10 ff ff ff 10 6c ff ff 10 ff 10 ff ff 10 53 ff ff 10 ff 10 49 ff 45 ff ff 53 00 ff ff 10 ff ff 49 3c ff ff ff 10 ff ff 10 ff 01 ff 49 53 ff 00 ff 45 ff ff 10 ff ff 10 ff 45 ff ff ff 45 53 ff ff 53 45 ff ff 10 ff 10 ff 49 ff 10 38 ff ff 00 49 00 ff 00 ff 10 ff ff ff 10 45 ff ff 10 49 49 ff ff de ff ff 49 ff 10 0e ff ff 01 49 49 45 45 ff 00 ff ff 10 49 45 ff ff 49 ff ff ff 00 ff ff ff ff ff 01 45 00 ff ff 10 49 ff ff 10 ff ff ff ff 10 49 ff ff 00 ff ff 10 ff 00 49 53 49 53 ff ff 49 ff 45 49 00 ff 10 ff ff 53 ff 49 45 ff 10 53 ff 10 ff ff 49 ff 45 a2 7c 53 ff ff ff 00 ff ff 45 ff 00 ff ff ff 01 49 00 45 53 49 ff ff ff 53 ff ff 00 49 00 49 00 ff ff 49 53 53 00 ff 00 ff ff 10 ff ff 00 ff ff ff ff ff 49 ff ff 10 ff ff ff ff de 45 49 45 ff ff 10 ff ff 10 ff 10 53 53 ff ff ff 53 ff 49 ff 10 49 ff ff ff ff 10 53 53 45 ff ff ff 10 45 53 53 ff ff ff 49 ff 00 ff 10 45 ff 49 ff ff ff 49 53 ff ff ff 10 ff ff 00 ff 49 ff 10 49 ff ff ff ff 10 49 ff 10 53 3c ff ff ff ff 49 ff 49 53 ff ff 01 48 ff ff ff 10 45 ff ff 10 53 ff ff ff 10 ff ff ff ff ff ff ff ff 10
*/
