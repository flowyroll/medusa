.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16751, %rsi
lea addresses_WC_ht+0x13ad1, %rdi
nop
nop
inc %r13
mov $106, %rcx
rep movsb
nop
nop
nop
xor $28966, %rbp
lea addresses_WT_ht+0x13411, %rsi
lea addresses_A_ht+0x89e1, %rdi
clflush (%rdi)
nop
nop
sub %rax, %rax
mov $89, %rcx
rep movsq
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x8226, %rsi
lea addresses_normal_ht+0x1a051, %rdi
nop
nop
inc %rbx
mov $90, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $50415, %r13
lea addresses_A_ht+0x109b3, %rcx
nop
dec %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rcx)
sub %r13, %r13
lea addresses_WC_ht+0x12481, %r13
nop
add %rbp, %rbp
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
sub $53751, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rcx

// Store
lea addresses_WC+0x2c51, %r14
nop
nop
nop
add %r13, %r13
movw $0x5152, (%r14)
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WT+0xfe78, %rax
and $31716, %r8
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
nop
and $35968, %r8

// Faulty Load
lea addresses_WC+0x2c51, %r13
nop
nop
nop
nop
cmp %r10, %r10
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 2, 'size': 32, 'same': True, 'NT': False}}
{'ae': 2479, '3c': 107, '1f': 441, '9e': 1, '94': 28, '5b': 2, '37': 60, '79': 2, '92': 1, 'c7': 1, '70': 1, '74': 326, '25': 1, '06': 2, 'a5': 1, '31': 1, '6a': 47, '66': 137, 'f1': 1, 'a8': 579, '7d': 1, 'e4': 1, 'eb': 1, '45': 13, 'db': 1, '09': 1, 'e0': 4, '64': 1, 'ab': 2, '93': 1, '95': 1, '52': 1, '4a': 1, '44': 1, 'af': 347, 'cf': 1, 'c9': 49, 'd5': 13, '42': 14, '5e': 1, 'cc': 2, 'bf': 2, 'f3': 1, '88': 2, 'c4': 1, '75': 5067, 'a7': 1, 'b5': 2, 'bc': 1, '03': 3025, '8c': 1, 'f4': 1, 'c5': 516, 'e9': 148, 'e5': 65, '65': 1, '72': 4197, 'ac': 3, '40': 1, '7c': 1, '6e': 1, 'fc': 1, '00': 406, '91': 1, 'cb': 77, 'ea': 256, 'ad': 146, 'ec': 1, '27': 2, 'e6': 26, '48': 216, 'fd': 2, '55': 22, 'b0': 1, 'f8': 1, '3b': 2824, 'f9': 1, '1d': 1, 'd6': 1, '85': 23, 'a4': 1, '81': 5, '02': 1, '17': 98, '0e': 1, '1c': 3}
06 00 00 00 00 00 72 06 00 03 00 03 00 03 00 03 00 72 00 03 00 03 00 03 00 03 00 03 00 03 00 03 00 03 00 03 00 03 00 03 72 00 03 72 00 03 00 03 72 00 03 00 03 00 03 00 72 00 03 00 03 00 03 00 03 72 00 03 00 03 72 00 03 72 00 00 03 00 72 00 03 00 03 72 00 03 00 03 72 00 03 00 03 00 03 72 72 00 03 00 03 00 03 00 03 00 03 00 03 72 00 72 00 03 00 72 00 72 00 03 00 03 00 03 00 03 00 03 00 03 00 03 00 03 00 03 00 72 72 72 00 00 00 03 72 00 03 00 03 00 72 72 00 03 00 03 72 72 00 03 00 03 72 72 00 72 72 00 03 00 03 72 00 03 00 72 00 72 72 72 72 72 00 03 00 03 00 03 00 03 72 00 03 00 03 00 03 00 03 00 ab 00 3b 72 72 00 72 00 3b 00 3b 00 3b 00 72 00 3b 00 72 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 72 00 3b 00 3b 00 3b 00 3b 72 72 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 72 00 3b 00 3b 00 72 72 03 ad 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 72 00 3b 00 3b 00 3b 72 00 3b 00 3b 00 3b 00 3b 00 72 00 3b 00 3b 00 72 00 3b 00 3b 72 00 3b 00 3b 00 72 72 00 3b 00 3b 00 3b 72 00 3b 00 72 00 3b 72 00 3b 00 75 ad 00 3b 00 3b 00 3b 00 3b 00 3b 00 72 00 3b 00 3b 00 3b 00 3b 00 3b 72 00 3b 00 3b 72 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 72 00 3b 00 3b 00 3b 72 72 00 3b 00 3b 00 72 72 00 3b 00 3b 00 3b 72 00 00 00 3b 00 72 00 72 00 72 00 3b 00 3b 00 72 00 72 00 3b 72 00 3b 00 3b 00 3b 00 3b 00 3b 00 72 00 3b 00 72 72 00 3b 00 3b 00 72 72 00 3b 00 3b 72 00 72 00 72 00 3b 00 3b 00 3b 00 00 3b 72 00 3b 00 3b 72 00 3b 00 72 72 00 3b 00 3b 72 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 72 72 00 3b 72 00 3b 00 72 00 3b 00 3b 72 00 3b 00 3b 00 3b 00 3b 72 00 3b 00 72 00 3b 00 3b 72 ad 72 00 72 00 3b 00 3b 00 3b 00 72 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 3b 00 72 00 72 00 3b 00 3b 00 3b 00 72 72 00 3b 00 3b 72 72 00 72 3b 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 ad 03 ad 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 75 75 72 72 72 75 75 75 75 72 75 75 72 72 75 75 75 75 72 72 75 75 75 75 75 72 75 72 75 75 75 75 75 75 75 75 75 72 72 75 72 75 75 75 75 75 75 75 75 75 75 75 75 72 75 75 03 72 72 75 72 75 75 75 72 75 75 75 75 75 75 72 75 72 75 75 75 75 75 75 75 75 72 75 75 75 75 75 75 75 75 75 72 75 75 72 75 75 75 75 75 75 75 75 75 75 75 75 75 72 72 72 75 75 75 75 75 75 75 75 75 75 75 74 74 75 75 75 75 75 74 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 74 75 75 75 75 74 75 75 74 75 75 75 75 75 75 75 75 75 75 74 75 75 75 75 75 75 75 75 75 75 74 75 75 75 75 75 75 75 75 74 75 74 75 75 03 ad 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 72 3b 75 75 75 75 75 75 75 75 75 75 75 75 75 75
*/
