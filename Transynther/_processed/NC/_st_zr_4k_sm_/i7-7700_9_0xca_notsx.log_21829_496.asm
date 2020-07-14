.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x5cfe, %r8
cmp $41086, %rsi
movw $0x6162, (%r8)
lfence
lea addresses_A_ht+0x11d6a, %r11
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, (%r11)
nop
nop
nop
sub $2145, %r8
lea addresses_A_ht+0x23ea, %r8
clflush (%r8)
nop
nop
xor %rdx, %rdx
movw $0x6162, (%r8)
nop
nop
nop
nop
cmp $12677, %r15
lea addresses_WC_ht+0x171ea, %r10
nop
dec %r8
mov $0x6162636465666768, %r15
movq %r15, (%r10)
nop
and %rsi, %rsi
lea addresses_WC_ht+0xd032, %rsi
lea addresses_WC_ht+0x11ea, %rdi
nop
nop
dec %rdx
mov $80, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x1cdea, %rsi
lea addresses_WC_ht+0x1cbea, %rdi
nop
nop
nop
nop
and $27181, %rdx
mov $21, %rcx
rep movsq
nop
nop
sub $52247, %rsi
lea addresses_D_ht+0x7182, %rsi
lea addresses_WC_ht+0x303, %rdi
sub $52520, %r10
mov $38, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rsi

// Store
lea addresses_D+0x1070c, %r11
and %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
nop
and %r11, %r11

// Load
mov $0x8ca, %rbx
clflush (%rbx)
nop
nop
cmp $34753, %r9
movb (%rbx), %r12b
nop
nop
nop
nop
sub $13476, %r9

// Store
lea addresses_A+0x199ea, %r14
add %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovaps %ymm6, (%r14)
add $32419, %rbx

// Store
mov $0x1ea, %rbx
nop
nop
inc %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rbx)
xor %rbx, %rbx

// Store
mov $0x5f41cc00000001ea, %r14
nop
nop
cmp $44631, %r12
movw $0x5152, (%r14)
nop
dec %r11

// Load
lea addresses_WT+0x1d4ca, %rsi
clflush (%rsi)
xor $49690, %r12
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
inc %r12

// Load
mov $0x727000000009ea, %r12
nop
nop
nop
nop
dec %r9
movntdqa (%r12), %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
nop
nop
nop
sub $23894, %rbx

// Store
lea addresses_US+0x18ea, %r11
nop
nop
sub %r14, %r14
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
add $39936, %r14

// Faulty Load
mov $0x5f41cc00000001ea, %rbx
nop
nop
add %r11, %r11
movb (%rbx), %r14b
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'00': 910, '52': 20919}
00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
