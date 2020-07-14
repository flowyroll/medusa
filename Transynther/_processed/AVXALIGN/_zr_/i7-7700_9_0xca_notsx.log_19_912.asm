.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6506, %rsi
lea addresses_WC_ht+0xc686, %rdi
nop
add $40057, %rax
mov $110, %rcx
rep movsw
nop
nop
inc %rax
lea addresses_A_ht+0x2906, %r14
nop
nop
nop
and $25, %rbx
mov (%r14), %si
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0x5d86, %rsi
lea addresses_D_ht+0xf6a6, %rdi
nop
nop
nop
inc %r9
mov $103, %rcx
rep movsw
nop
add %r14, %r14
lea addresses_A_ht+0x45c1, %rbx
clflush (%rbx)
dec %rax
movw $0x6162, (%rbx)
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x1ef06, %r14
nop
sub $17578, %rsi
movb (%r14), %al
nop
nop
nop
add $33815, %rax
lea addresses_D_ht+0xb850, %rdi
nop
nop
nop
nop
inc %r9
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
xor $60652, %rax
lea addresses_normal_ht+0x128c6, %r9
nop
nop
nop
nop
sub $36992, %rsi
and $0xffffffffffffffc0, %r9
vmovaps (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
nop
nop
nop
add $13509, %r9
lea addresses_normal_ht+0x17086, %rsi
lea addresses_normal_ht+0x841a, %rdi
nop
and %rax, %rax
mov $57, %rcx
rep movsq
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x1b06, %rsi
lea addresses_WT_ht+0x8b06, %rdi
nop
nop
nop
nop
nop
mfence
mov $9, %rcx
rep movsl
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x12e06, %rsi
lea addresses_D_ht+0x5006, %rdi
xor %r15, %r15
mov $71, %rcx
rep movsl
nop
add $23136, %rcx
lea addresses_normal_ht+0x306, %rsi
lea addresses_WC_ht+0x1df01, %rdi
nop
nop
nop
nop
and $14324, %r9
mov $65, %rcx
rep movsq
nop
sub $2839, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0x166e0, %rdx
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
sub %r14, %r14

// Store
lea addresses_WC+0x1a106, %r11
nop
nop
nop
nop
sub $41206, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r11)
nop
nop
cmp %rax, %rax

// Load
lea addresses_PSE+0x1bc30, %rbx
nop
nop
nop
nop
nop
and $15008, %rdx
mov (%rbx), %r11d
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_US+0x8306, %rcx
nop
cmp %r14, %r14
mov (%rcx), %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
