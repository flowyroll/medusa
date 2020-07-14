.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x130a2, %rsi
lea addresses_WC_ht+0x302, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r8, %r8
mov $86, %rcx
rep movsb
sub $50605, %r11
lea addresses_A_ht+0xc6aa, %rsi
cmp $56271, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rsi)
add $21188, %rcx
lea addresses_D_ht+0xb152, %rsi
lea addresses_normal_ht+0x1a902, %rdi
xor %rax, %rax
mov $66, %rcx
rep movsw
nop
nop
nop
nop
nop
and $9967, %rcx
lea addresses_D_ht+0xde92, %rdi
and $39741, %rax
mov (%rdi), %r11w
add %rcx, %rcx
lea addresses_normal_ht+0x8ee2, %rsi
lea addresses_WT_ht+0x1bfb0, %rdi
cmp %rax, %rax
mov $84, %rcx
rep movsw
nop
nop
sub $11220, %rax
lea addresses_UC_ht+0x11702, %rax
nop
nop
sub $44392, %r13
mov (%rax), %ecx
nop
nop
nop
nop
nop
add $64058, %r8
lea addresses_UC_ht+0x15de, %rsi
lea addresses_UC_ht+0x10a22, %rdi
and %r10, %r10
mov $122, %rcx
rep movsw
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x4502, %rsi
lea addresses_normal_ht+0x13112, %rdi
nop
nop
nop
xor %rax, %rax
mov $60, %rcx
rep movsw
nop
nop
nop
xor $16757, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x1676a, %r9
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
add $14596, %r15

// Store
mov $0x5b1370000000090, %r14
sub $6829, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movaps %xmm2, (%r14)
nop
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_US+0x18b02, %rdx
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%rdx)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
mov $0x36a94e0000000102, %rsi
nop
nop
nop
nop
nop
sub $41746, %r14
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
nop
and %rdx, %rdx

// Store
lea addresses_WT+0xc2, %rdx
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_US+0x18b02, %rcx
nop
cmp %r9, %r9
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'30': 41, '58': 36}
30 30 30 30 58 58 58 58 58 58 58 58 58 58 58 30 30 30 30 30 30 58 58 58 58 58 58 58 30 30 30 30 58 30 30 30 30 30 30 58 58 58 58 58 58 58 58 30 30 30 30 30 30 30 30 30 30 58 58 58 58 58 58 58 58 58 30 30 30 30 30 30 30 30 30 30 30
*/
