.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x3198, %r12
nop
nop
nop
nop
xor %r14, %r14
mov (%r12), %r9w
cmp $7270, %r9
lea addresses_A_ht+0x5528, %rax
nop
cmp $49030, %rbp
mov (%rax), %r12
nop
nop
nop
dec %rax
lea addresses_D_ht+0x1968a, %r10
dec %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r10)
nop
add %r14, %r14
lea addresses_normal_ht+0x1c998, %r9
nop
nop
sub %rbp, %rbp
mov (%r9), %ax
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x12798, %rax
nop
nop
nop
xor $63993, %r12
movw $0x6162, (%rax)
nop
nop
add %r10, %r10
lea addresses_WT_ht+0x17ad8, %rsi
lea addresses_UC_ht+0xf138, %rdi
nop
nop
cmp $51004, %r12
mov $69, %rcx
rep movsq
nop
nop
nop
nop
cmp $54129, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rax
push %rbp
push %rdi
push %rsi

// Faulty Load
lea addresses_D+0x14998, %rsi
nop
nop
add $19024, %rbp
vmovaps (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'bc': 59, '4e': 449, '24': 585, '03': 61, '19': 64, 'c5': 64, '12': 1, 'e9': 1, '3e': 1, '11': 3, 'dc': 67, '71': 1, 'fb': 63, 'fc': 62, 'ba': 3, '23': 3510, '02': 2, 'c9': 2, '66': 61, '9e': 1, '21': 66, 'eb': 4, 'd0': 130, '04': 2, 'e7': 70, '3a': 1, '59': 66, '5d': 63, 'b7': 127, 'fd': 4, '43': 4, '6f': 4, '52': 3, 'd4': 63, '3b': 59, '00': 1, '38': 1, 'd8': 64, '85': 1, 'b8': 6, 'a1': 67, '42': 259, '0d': 11, '90': 1, '96': 1, 'c3': 1, '17': 128, '49': 15403, '5c': 1, 'c4': 66, '0e': 59, '1b': 3, '50': 30}
00 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 02 02 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 d0 d0 23 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 23 d0 d0 d0 d0 d0 d0 d0 d0 d0 23 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 23 d0 d0 d0 d0 d0 d0 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 23 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 23 23
*/
