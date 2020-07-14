.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xc0b1, %rsi
lea addresses_D_ht+0x1a275, %rdi
clflush (%rsi)
nop
and $32742, %r12
mov $86, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x1aefd, %r11
add %rdi, %rdi
mov (%r11), %r13
nop
add %r12, %r12
lea addresses_D_ht+0x9491, %rcx
nop
nop
and %r13, %r13
movw $0x6162, (%rcx)
nop
nop
cmp $332, %rcx
lea addresses_UC_ht+0xcfb1, %rsi
lea addresses_normal_ht+0x127c9, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r11, %r11
mov $62, %rcx
rep movsq
sub $16571, %rsi
lea addresses_UC_ht+0x4891, %r13
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r12
movq %r12, (%r13)
add $54209, %rdi
lea addresses_A_ht+0x19491, %rsi
lea addresses_A_ht+0x18587, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $44, %rcx
rep movsw
nop
nop
cmp $37538, %r12
lea addresses_A_ht+0xd0d9, %r8
nop
nop
nop
nop
sub $45498, %r11
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x8211, %rsi
nop
and %rcx, %rcx
movb $0x61, (%rsi)
nop
nop
nop
sub $28302, %r8
lea addresses_UC_ht+0xde91, %r12
sub $63328, %rcx
movb $0x61, (%r12)
add %r13, %r13
lea addresses_D_ht+0x1819, %rsi
lea addresses_WT_ht+0xa291, %rdi
cmp $49, %rax
mov $5, %rcx
rep movsl
nop
nop
nop
nop
cmp $60598, %rax
lea addresses_UC_ht+0x1caa1, %rsi
lea addresses_A_ht+0x16931, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $88, %rcx
rep movsl
nop
cmp %r12, %r12
lea addresses_A_ht+0x4b89, %rdi
nop
dec %r12
movl $0x61626364, (%rdi)
sub $59274, %rcx
lea addresses_normal_ht+0x1e391, %rsi
lea addresses_A_ht+0x17941, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $122, %rcx
rep movsl
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x5c91, %rsi
lea addresses_A_ht+0xdc91, %rdi
and %r12, %r12
mov $12, %rcx
rep movsl
nop
nop
xor $32116, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_WC+0x16e91, %r14
nop
nop
nop
nop
nop
add %rdi, %rdi
movw $0x5152, (%r14)
and %r14, %r14

// Store
mov $0x291, %r11
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r11)
nop
nop
dec %r14

// Store
lea addresses_WC+0xb591, %r13
nop
sub $16224, %rbp
movl $0x51525354, (%r13)
nop
nop
nop
add $1534, %rax

// Store
lea addresses_WC+0x1f8d0, %r13
nop
nop
sub $10685, %r11
mov $0x5152535455565758, %rax
movq %rax, (%r13)
cmp $31251, %rbp

// Store
lea addresses_WC+0x1a6d1, %r11
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
nop
sub %rsi, %rsi

// Store
mov $0x60a5640000000691, %r11
sub %r14, %r14
movw $0x5152, (%r11)
nop
nop
nop
add $32052, %r11

// Store
lea addresses_UC+0xb791, %rsi
sub $59736, %rax
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
cmp $53725, %r14

// Load
lea addresses_WT+0x16641, %r14
nop
nop
nop
nop
nop
cmp $20001, %rsi
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
mov $0x60a5640000000691, %rsi
nop
nop
xor $8763, %rbp
vmovntdqa (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'08': 4, '00': 20511, '06': 1, '44': 1301, '48': 1, '40': 3, '04': 8}
00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00
*/
