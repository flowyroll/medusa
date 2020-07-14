.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xe25, %rcx
nop
nop
nop
nop
nop
cmp $26041, %r10
mov (%rcx), %rbx
nop
nop
dec %r14
lea addresses_normal_ht+0x14082, %r11
nop
nop
nop
nop
add $50733, %rsi
movb (%r11), %bl
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x136ce, %rcx
nop
nop
nop
nop
cmp $60077, %rdi
mov (%rcx), %ebx
nop
nop
inc %rcx
lea addresses_A_ht+0x1662a, %rsi
nop
nop
nop
nop
xor $58188, %r14
movl $0x61626364, (%rsi)
nop
nop
and $40503, %r14
lea addresses_UC_ht+0x1d836, %r11
nop
nop
nop
nop
sub %rbx, %rbx
movb (%r11), %r14b
nop
nop
nop
nop
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x1562a, %rdx
nop
dec %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%rdx)
nop
nop
nop
dec %rdx

// Faulty Load
lea addresses_PSE+0x1562a, %rax
xor $39755, %r12
vmovaps (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'bc': 3, '00': 121, '1e': 2, 'c2': 1, 'fa': 2, '82': 1, 'be': 1, '24': 3, 'd4': 1, '36': 3, 'a2': 4, '18': 4, '9a': 1, '2a': 1, '6c': 1, '70': 2, '90': 3, 'cc': 3, 'ec': 1, '8e': 2, '44': 1, '34': 1, 'a8': 2, 'e4': 1, 'e2': 2, '58': 8, '3c': 1, '08': 3, 'f4': 2, '48': 2, '10': 3, '40': 1, '52': 1, 'b0': 1, '68': 2, '80': 2, 'e0': 6, '14': 6, 'a6': 1, '3e': 3, '38': 1, 'f6': 2, 'b6': 2, '96': 1, 'f2': 2, 'ba': 1, '1c': 3, '5c': 1, 'ac': 3, '62': 1, 'fe': 1, '3a': 3, '0a': 1, '72': 2, '9e': 2, '6a': 1, 'b4': 2, '4e': 2, 'c4': 2, 'f0': 2, '28': 2, '60': 1, 'd2': 2, 'e6': 1, 'c6': 1, 'd0': 1, '16': 3, 'da': 1, 'a4': 1, 'fc': 1, '7e': 1, '0e': 2, '12': 1, '84': 2, 'd8': 2, 'dc': 1, '78': 1, '98': 1, 'e8': 1, '22': 2, '5a': 2, 'b8': 1, '76': 1, '56': 2, '88': 2, '9c': 1, 'a0': 2, '8a': 1, '30': 1, '74': 1}
bc 00 1e c2 fa 82 be 24 00 00 00 d4 36 00 00 00 a2 00 18 9a 2a 00 6c 70 90 cc ec 8e 44 34 a8 e4 e2 00 58 3c 00 00 e2 00 08 00 f4 00 00 48 10 40 fa 52 b0 00 90 08 00 68 80 e0 00 14 00 18 a6 00 00 00 90 00 58 14 00 3e 00 38 14 00 00 00 00 f6 00 00 00 00 b6 00 00 a2 96 00 00 00 f2 00 00 e0 00 ba 58 00 00 00 1c 00 5c ac 62 00 80 fe 00 00 cc 00 3a 0a 00 48 cc a8 00 72 00 a2 00 00 00 00 1c 00 9e 00 58 00 6a 14 b4 4e 00 00 00 c4 00 58 00 18 f6 00 f0 e0 28 00 58 60 00 00 d2 00 00 00 e6 c6 d0 08 16 00 da ac 00 00 00 a4 00 fc 00 7e f2 00 00 00 00 0e 10 00 00 12 36 24 1e 00 00 4e 84 d8 a2 dc 00 00 70 d2 3e e0 00 00 ac 78 98 3a bc 14 00 10 e8 00 3a 84 00 00 1c 22 00 e0 00 c4 d8 22 00 16 72 00 5a b6 bc 00 00 9e b8 f0 00 76 00 00 28 56 68 00 16 88 88 00 00 00 00 56 00 00 9c a0 f4 36 00 18 a0 e0 00 14 00 00 00 0e 3e b4 8a 24 58 00 8e 30 00 74 58 00 00 00 5a 00
*/
