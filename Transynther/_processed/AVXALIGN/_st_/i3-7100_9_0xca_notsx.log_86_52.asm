.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xcb6c, %rax
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%rax)
nop
add $30438, %rax
lea addresses_A_ht+0x1cd6c, %rsi
nop
nop
nop
cmp $52324, %rdx
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x1296c, %rdx
add $54078, %r11
movb $0x61, (%rdx)
nop
nop
dec %rdx
lea addresses_A_ht+0xad6c, %r10
nop
nop
xor %rdx, %rdx
mov (%r10), %si
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x1e32c, %r10
nop
and $28168, %rdx
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
sub $37180, %rax
lea addresses_A_ht+0x16b6c, %r11
nop
nop
nop
dec %r8
movups (%r11), %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x1705c, %rsi
lea addresses_UC_ht+0xe56c, %rdi
nop
nop
nop
xor $48420, %rax
mov $29, %rcx
rep movsq
nop
nop
nop
nop
xor $34485, %rax
lea addresses_WC_ht+0x43ec, %rdx
clflush (%rdx)
nop
xor $22304, %rdi
movb $0x61, (%rdx)
xor $31860, %r10
lea addresses_WC_ht+0xbd6c, %r10
nop
nop
xor %r8, %r8
movb (%r10), %r11b
nop
dec %rsi
lea addresses_WT_ht+0xed6c, %rax
nop
nop
dec %rsi
mov $0x6162636465666768, %r11
movq %r11, (%rax)
nop
nop
nop
add $53272, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi

// Load
mov $0x7c04b2000000036c, %rcx
nop
add $63471, %rax
mov (%rcx), %r15
nop
nop
add %r12, %r12

// Store
mov $0x41dedf0000000cec, %r13
nop
nop
nop
nop
nop
xor %r11, %r11
movw $0x5152, (%r13)
nop
nop
nop
xor $54803, %r12

// Store
lea addresses_PSE+0xfcec, %rdi
nop
nop
cmp $42409, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
cmp $39461, %r11

// Store
lea addresses_A+0xab0c, %r11
nop
nop
nop
sub %rax, %rax
movl $0x51525354, (%r11)
nop
nop
nop
and %r12, %r12

// Faulty Load
lea addresses_normal+0x1dd6c, %r15
sub %r11, %r11
mov (%r15), %di
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_NC', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'34': 86}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
