.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x15b7e, %r14
nop
nop
nop
xor $48599, %r9
movb $0x61, (%r14)
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x19936, %rsi
nop
add %r12, %r12
mov (%rsi), %bx
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x68fe, %r8
nop
nop
nop
nop
nop
and $25563, %r13
movl $0x61626364, (%r8)
add %rbx, %rbx
lea addresses_normal_ht+0x1773e, %rsi
lea addresses_WT_ht+0x14a3e, %rdi
dec %r9
mov $127, %rcx
rep movsw
nop
nop
xor $27833, %rdi
lea addresses_normal_ht+0x15e3e, %rdi
nop
add $33203, %rbx
mov (%rdi), %r12w
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x1490e, %r12
nop
nop
nop
dec %rdi
movups (%r12), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rbx
push %rsi

// Load
lea addresses_WC+0x161ee, %r9
nop
nop
nop
add $28961, %r11
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_normal+0x168de, %rbp
nop
nop
nop
cmp $63610, %rax
movw $0x5152, (%rbp)
nop
nop
nop
nop
add $55136, %rax

// Store
lea addresses_A+0x1397e, %rax
nop
nop
cmp %rbx, %rbx
movw $0x5152, (%rax)
nop
nop
nop
dec %r11

// Store
lea addresses_WT+0x223e, %r11
xor %rsi, %rsi
movl $0x51525354, (%r11)
nop
nop
add %rbx, %rbx

// Store
lea addresses_A+0xc69b, %r9
nop
nop
nop
nop
sub $11080, %r13
movw $0x5152, (%r9)
and %r9, %r9

// Store
lea addresses_PSE+0x10392, %rsi
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
nop
nop
nop
nop
sub $50417, %r11

// Faulty Load
lea addresses_US+0xd23e, %rsi
clflush (%rsi)
dec %rbp
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'68': 3, '2a': 3, '44': 5135, 'a6': 1, '00': 16681, '40': 2, '45': 1, '08': 3}
00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 44 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 00 00 44 00 00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 44 00 00 00 44 00 00 44 00 00 00 00 00 44 00 00 44 00 44 44 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 44 00 44 44 00 44 00 00 00 00 00 00 00 44 00 00 00 00 44 00 44 00 44 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 44 44 44 44 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 44 44 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 44 44 00 00 00 00 00 00 00 00 00 00 44 44 44 00 44 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 44 00 44 00 00 00 00 00 00 44 00 00 00 00 00 44 44 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 00 00 00 44 44 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 44 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 44 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 44 00 44 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 44 44 00 44 00 44 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 44 00 00 00 44 44 00 00 00 44 44 00 00 00 44 00 00 44 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 44 44 44 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00
*/
