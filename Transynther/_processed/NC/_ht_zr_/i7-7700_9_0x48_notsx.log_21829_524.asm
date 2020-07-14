.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1323c, %rbp
nop
nop
nop
nop
sub %r13, %r13
mov (%rbp), %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x154c, %rsi
lea addresses_normal_ht+0x1728c, %rdi
nop
nop
nop
nop
and $1822, %rbx
mov $10, %rcx
rep movsw
xor %rbp, %rbp
lea addresses_normal_ht+0x1c9b4, %r13
nop
nop
nop
cmp %rdi, %rdi
movups (%r13), %xmm3
vpextrq $0, %xmm3, %rbx
nop
and %rsi, %rsi
lea addresses_D_ht+0x1e74c, %rsi
lea addresses_normal_ht+0x1604c, %rdi
nop
nop
nop
xor $64933, %r9
mov $5, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x5ac, %rsi
nop
nop
nop
nop
nop
add %r13, %r13
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
xor $1742, %rsi
lea addresses_WC_ht+0x17f94, %rdi
nop
inc %rbp
mov (%rdi), %r13d
cmp $14664, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0x1b6f0, %r15
nop
nop
nop
xor %r12, %r12
movups (%r15), %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
nop
nop
and $46491, %rbp

// Store
lea addresses_UC+0xee90, %r12
nop
add $26895, %r10
mov $0x5152535455565758, %r11
movq %r11, (%r12)
nop
nop
nop
nop
nop
inc %r10

// Store
lea addresses_D+0x2bec, %r12
nop
nop
nop
nop
sub $7875, %r10
movw $0x5152, (%r12)
nop
nop
nop
nop
dec %r11

// Store
lea addresses_A+0xb9cc, %r10
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_PSE+0x12d4c, %rdx
clflush (%rdx)
nop
and %r11, %r11
movl $0x51525354, (%rdx)
nop
nop
nop
xor $50457, %rdx

// Load
lea addresses_WT+0x104c, %r12
nop
sub $1853, %rbp
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
nop
nop
sub $30668, %r15

// REPMOV
mov $0xaa, %rsi
lea addresses_WT+0xed4c, %rdi
nop
nop
nop
nop
sub $12218, %r15
mov $97, %rcx
rep movsb
nop
nop
nop
nop
sub $53087, %r14

// Store
lea addresses_UC+0x1474c, %r10
nop
nop
nop
add $2069, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r10)
nop
nop
nop
nop
nop
add $14213, %r14

// Faulty Load
mov $0x52d7100000000d4c, %r11
nop
cmp $31075, %r12
vmovups (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WT', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_P'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'4c': 331, '00': 21498}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00
*/
