.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x31a6, %rdi
inc %rdx
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
nop
and $32260, %r11
lea addresses_UC_ht+0x7546, %r12
add $29311, %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0xa596, %rdx
add $53682, %r12
mov (%rdx), %r11d
nop
nop
nop
and $18995, %rdx
lea addresses_WC_ht+0x1a580, %r12
and %rdi, %rdi
movb $0x61, (%r12)
nop
nop
nop
add $18278, %r12
lea addresses_A_ht+0x1b732, %rsi
lea addresses_normal_ht+0x1bc4e, %rdi
nop
nop
add $59345, %rdx
mov $17, %rcx
rep movsl
nop
nop
dec %r12
lea addresses_A_ht+0xabc6, %r13
xor %rdx, %rdx
movw $0x6162, (%r13)
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rsi

// Store
lea addresses_A+0x1746, %r13
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%r13)
nop
cmp %r13, %r13

// Store
mov $0x146, %rbp
nop
nop
nop
nop
nop
sub $17990, %r13
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
xor $30294, %r14

// Store
lea addresses_RW+0x1dec6, %rax
xor %r10, %r10
movb $0x51, (%rax)
nop
nop
sub %r15, %r15

// Store
mov $0xac6, %r15
nop
nop
and $23623, %r14
mov $0x5152535455565758, %r13
movq %r13, (%r15)
cmp %rbp, %rbp

// Store
mov $0x5c6, %r14
nop
nop
nop
nop
sub %rax, %rax
movw $0x5152, (%r14)
nop
nop
nop
cmp $44273, %r14

// Faulty Load
mov $0x1d41f400000006c6, %r15
nop
nop
nop
nop
add $52897, %rax
vmovups (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'4a': 1, '36': 1, '92': 1, 'd3': 1, 'a5': 1, 'd6': 1, 'e0': 1, '60': 19361, '5f': 2, '77': 1, '15': 1, '31': 1, '2f': 1, 'fe': 1, '01': 1, '55': 1, '13': 2, '26': 1, 'c0': 1, '0f': 2, 'ce': 1, 'd4': 1, '72': 1, 'f6': 1, 'a1': 1, '34': 1, '7a': 1, '45': 1, '97': 3, '9c': 1, '21': 1, 'b7': 2, '79': 1, '9f': 1, 'c7': 2, '57': 1, 'd7': 1, '23': 1, 'e1': 1, 'b1': 1, '52': 73, '04': 1, '75': 1, '29': 1, 'a0': 1, 'dd': 1, '27': 2, 'ec': 1, '74': 1, 'c6': 1, 'b4': 1, '90': 1, '78': 1, '56': 1, '11': 1, '65': 1, 'f0': 1, '6e': 1, 'da': 1, '8d': 1, '03': 1, 'ee': 1, 'b8': 1, '28': 1, '6f': 2, 'fd': 1, '02': 1, 'f3': 1, 'e8': 1, '5b': 1, 'a9': 1, 'b2': 1, 'fa': 1, '8b': 1, '19': 1, '81': 1, '53': 73, 'e9': 1, '2d': 1, '06': 2191, 'ef': 2, '00': 23, '3c': 1, 'df': 1, 'be': 1, '38': 1, 'f5': 1, 'ff': 2, '7b': 1, 'ed': 1, 'a3': 1, '9b': 1, '6b': 1, '30': 1, '33': 1, 'cd': 1, '99': 1, '85': 1, '2b': 1, '42': 1, '91': 1, '4e': 1}
60 06 02 60 06 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 06 60 60 60 60 60 60 60 06 60 06 60 60 60 60 60 60 60 60 53 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 06 60 60 45 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 06 06 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 06 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 06 06 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 06 60 52 60 60 60 60 06 60 06 60 60 06 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 00 60 60 06 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 53 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 cd 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 06 06 60 60 60 60 60 60 06 60 06 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 53 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 06 60 60 60 06 60 60 60 60 60 60 60 06 60 60 60 60 60 91 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 53 60 60 06 60 60 60 60 06 60 06 60 60 60 60 60 60 60 06 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 55 06 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 53 60 60 60 06 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 06 60 60 60 60 60 06 60 60 60 60 60 60 60 52 60 60 60 60 60 60 60 06 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 06 60 06 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 7b 60 60 60 60 60 06 60 60 60 60 60 60 06 60 60 60 06 60 60 60 06 60 60 60 60 60 60 06 60 06 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 06 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 52 60 60 60 60 60 06 60 60 60 60 60 60 60 60 06 60 60 60 60 60 06 60 60 06 60 06 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 06 60 60 60
*/
