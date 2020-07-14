.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x787f, %r14
nop
nop
nop
nop
inc %r8
mov (%r14), %cx
nop
nop
nop
nop
nop
xor $5563, %rdx
lea addresses_A_ht+0x12dc7, %r10
clflush (%r10)
nop
nop
and %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%r10)
sub $27767, %r8
lea addresses_WC_ht+0xb27f, %rsi
lea addresses_WT_ht+0x13d7f, %rdi
nop
add $3342, %r14
mov $114, %rcx
rep movsl
nop
mfence
lea addresses_A_ht+0x169ed, %rsi
lea addresses_D_ht+0x163f, %rdi
nop
nop
nop
nop
xor $25217, %r14
mov $120, %rcx
rep movsl
nop
nop
nop
nop
sub %r8, %r8
lea addresses_A_ht+0x3a7f, %r12
nop
nop
nop
nop
sub $14134, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%r12)
cmp $40370, %r10
lea addresses_A_ht+0xd67f, %r10
and $5121, %r9
mov (%r10), %di
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x1c13f, %rsi
lea addresses_normal_ht+0x1966f, %rdi
nop
add $12832, %r8
mov $40, %rcx
rep movsq
nop
nop
nop
nop
cmp $60377, %r9
lea addresses_WT_ht+0x1b7f, %r10
and %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, (%r10)
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x60ff, %rsi
nop
nop
nop
nop
cmp $19587, %rdx
mov (%rsi), %r9w
nop
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x4f80, %rsi
lea addresses_A_ht+0x145ff, %rdi
nop
nop
and %rdx, %rdx
mov $118, %rcx
rep movsq
nop
nop
nop
nop
xor $38654, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_normal+0x1a7f, %r8
nop
nop
nop
nop
nop
inc %r11
movl $0x51525354, (%r8)
dec %r10

// Load
lea addresses_A+0x15d9f, %rbx
nop
add $35344, %rdx
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
sub $35975, %rbp

// Store
lea addresses_RW+0x1d2b5, %r8
nop
nop
nop
nop
add %rdx, %rdx
movb $0x51, (%r8)
nop
nop
and %r11, %r11

// Faulty Load
mov $0x5cf8920000000a7f, %r11
nop
nop
cmp %rbp, %rbp
movaps (%r11), %xmm4
vpextrq $0, %xmm4, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'34': 5, '4e': 2, '42': 4, '66': 6, '72': 2, 'f0': 2, '1e': 1, 'c2': 3, '24': 7, '0c': 1, '5e': 1, '02': 7, '12': 7, '9c': 7, '3e': 2, '28': 2, '36': 9, 'f8': 5, '06': 4, '56': 3, '96': 2, '20': 6, '00': 271, '0e': 3, 'e2': 5, 'ae': 1, 'f2': 2, 'ca': 1, '04': 4, 'ac': 4, 'bc': 5, 'e6': 4, '16': 6, '82': 8, '54': 21100, 'f4': 5, 'b6': 2, '76': 5, 'c4': 6, 'e0': 1, '7c': 4, '44': 5, '98': 7, 'aa': 1, '70': 4, 'b8': 3, 'a2': 9, '5c': 5, 'ee': 1, 'b2': 3, 'dc': 7, '4a': 1, '3a': 2, 'e4': 2, '90': 2, 'cc': 7, '86': 12, '08': 5, 'fc': 10, '60': 3, 'd8': 5, '0a': 10, '38': 2, '40': 6, '62': 7, '10': 2, '84': 6, 'ea': 1, '4c': 5, 'be': 4, '14': 5, '8c': 3, '52': 6, 'd6': 3, '46': 7, '8a': 1, '64': 10, '30': 2, '94': 6, 'd2': 7, 'da': 1, '22': 6, 'c8': 5, 'fe': 1, 'f6': 3, '18': 3, 'a0': 2, '3c': 7, '74': 4, 'b4': 4, '1c': 3, 'c0': 2, 'e8': 5, '26': 4, 'c6': 1, 'de': 1, '80': 3, '88': 2, 'ec': 3, '92': 8, 'b0': 3, '8e': 3, 'a4': 4, 'a6': 6, '7e': 2, '78': 3, '32': 3, 'a8': 3, '2c': 3, '68': 2, 'd0': 4, '48': 5, 'd4': 8}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 14 54 54 54 54 54 54 54 54 54 54 08 54 54 54 54 54 54 54 54 54 54 54 08 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 f8 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 86 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 98 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 76 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 ae 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 e2 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 04 54 54 92 54 54 54 54 d4 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 2c 54 aa 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 e8 54 54 54 54 54 be 54 54 54 54 54 54 54 54 54 54 36 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 86 54 00 54 54 54 54 54 54 54 54 92 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 38 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 40 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 60 54 54 00 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 b4 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 c4 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 a2 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 64 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 3c 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 22 54 54 54 54 54 54 54 22 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
