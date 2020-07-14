.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1640c, %rsi
lea addresses_D_ht+0x16fc4, %rdi
and $12585, %r13
mov $104, %rcx
rep movsl
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x18f86, %r9
nop
nop
nop
dec %rdx
mov (%r9), %r8w
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x137fc, %rdx
xor %r8, %r8
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0xa1c4, %rsi
lea addresses_WC_ht+0x2344, %rdi
clflush (%rdi)
nop
add %r11, %r11
mov $60, %rcx
rep movsw
nop
cmp %r8, %r8
lea addresses_WT_ht+0xe224, %rsi
lea addresses_D_ht+0x15744, %rdi
nop
nop
nop
nop
xor $27125, %r8
mov $65, %rcx
rep movsq
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0xe544, %rsi
xor %r13, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm5
and $0xffffffffffffffc0, %rsi
movaps %xmm5, (%rsi)
nop
nop
dec %rsi
lea addresses_A_ht+0x52a4, %rsi
lea addresses_D_ht+0x43a4, %rdi
sub %r11, %r11
mov $117, %rcx
rep movsw
inc %rdx
lea addresses_D_ht+0x9544, %r13
nop
nop
and %rcx, %rcx
mov (%r13), %r8
nop
nop
nop
add $61627, %r13
lea addresses_A_ht+0x16744, %r13
nop
nop
nop
nop
sub $49041, %r9
mov (%r13), %r11w
add $7019, %rdi
lea addresses_WT_ht+0x15cc, %rsi
lea addresses_D_ht+0x4d53, %rdi
nop
nop
sub $20705, %rdx
mov $52, %rcx
rep movsw
nop
nop
nop
sub $5047, %r13
lea addresses_WT_ht+0x131c4, %rsi
lea addresses_A_ht+0xeb44, %rdi
nop
nop
nop
nop
inc %r8
mov $22, %rcx
rep movsl
nop
nop
and $56357, %r9
lea addresses_D_ht+0xcb44, %rsi
lea addresses_WT_ht+0x7744, %rdi
nop
nop
nop
nop
nop
xor $31212, %r11
mov $7, %rcx
rep movsl
nop
sub %rsi, %rsi
lea addresses_A_ht+0x8b94, %rsi
lea addresses_WC_ht+0x9744, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $121, %rcx
rep movsq
nop
xor $13096, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_normal+0x2344, %rdi
nop
nop
nop
nop
and $6003, %rax
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
and $706, %rax

// Store
lea addresses_WT+0x14b44, %r15
nop
nop
sub $15295, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovaps %ymm1, (%r15)
nop
and %r9, %r9

// Store
mov $0xf44, %r9
sub %rsi, %rsi
movb $0x51, (%r9)
nop
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_PSE+0x1a344, %r14
nop
nop
nop
xor %rax, %rax
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'33': 11}
33 33 33 33 33 33 33 33 33 33 33
*/
