.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x10670, %rcx
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%rcx), %rax
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x2c50, %r13
nop
nop
nop
nop
nop
add %r14, %r14
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
xor $52275, %rax
lea addresses_D_ht+0x1d0d0, %rcx
clflush (%rcx)
dec %r14
movb (%rcx), %al
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x17750, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
cmp $33647, %rdi
lea addresses_A_ht+0x157ac, %rsi
lea addresses_UC_ht+0x3bd0, %rdi
clflush (%rdi)
inc %rax
mov $90, %rcx
rep movsq
nop
nop
nop
nop
and $60221, %r12
lea addresses_normal_ht+0xc150, %rdi
nop
nop
nop
and $11298, %r12
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
nop
dec %rax
lea addresses_A_ht+0x12cc, %rsi
lea addresses_A_ht+0x100d0, %rdi
nop
nop
nop
dec %r12
mov $49, %rcx
rep movsb
nop
nop
nop
nop
cmp $33209, %rcx
lea addresses_UC_ht+0xdac6, %rdx
nop
nop
nop
nop
nop
inc %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm4
and $0xffffffffffffffc0, %rdx
movaps %xmm4, (%rdx)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x96d0, %rcx
nop
nop
nop
add $49836, %rdx
movw $0x6162, (%rcx)
nop
sub $55498, %r13
lea addresses_WT_ht+0x19d0e, %r14
clflush (%r14)
nop
nop
nop
nop
nop
dec %rsi
movb $0x61, (%r14)
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0xcd5, %rsi
lea addresses_WC_ht+0xa040, %rdi
xor $26478, %r13
mov $116, %rcx
rep movsl
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x12c10, %rdi
nop
nop
sub $10575, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
nop
nop
sub $51064, %rdi
lea addresses_WT_ht+0x198d0, %r14
nop
nop
nop
nop
nop
xor %rdx, %rdx
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
cmp $9802, %r12
lea addresses_UC_ht+0x102d9, %rsi
lea addresses_UC_ht+0xcad0, %rdi
nop
cmp $39776, %rdx
mov $98, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x158d0, %rsi
dec %r9
movl $0x51525354, (%rsi)
nop
nop
and $24908, %r15

// REPMOV
lea addresses_D+0x120d0, %rsi
lea addresses_A+0x174d0, %rdi
clflush (%rsi)
nop
nop
nop
sub $64400, %r9
mov $78, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $25190, %rbp

// Store
lea addresses_UC+0x41f, %r15
nop
nop
add $18147, %r9
movw $0x5152, (%r15)

// Exception!!!
mov (0), %rdx
nop
add $24188, %r9

// Store
lea addresses_WC+0x1df10, %rdi
nop
nop
sub %rax, %rax
movb $0x51, (%rdi)
nop
nop
sub $56228, %rsi

// Load
lea addresses_A+0xace0, %rax
nop
add %rsi, %rsi
mov (%rax), %r9

// Exception!!!
nop
nop
nop
nop
mov (0), %rcx
nop
nop
inc %rdi

// Store
lea addresses_normal+0xa685, %rcx
nop
add %rax, %rax
movw $0x5152, (%rcx)
nop
nop
nop
nop
inc %rbp

// Load
lea addresses_A+0x13630, %r9
nop
nop
nop
nop
nop
sub $15540, %rsi
movb (%r9), %al
nop
dec %rbp

// Store
lea addresses_normal+0x1e050, %rcx
nop
dec %rdi
movb $0x51, (%rcx)
nop
nop
cmp $31647, %rcx

// Store
lea addresses_A+0x174d0, %rax
nop
nop
nop
nop
nop
cmp %r9, %r9
movw $0x5152, (%rax)
add %rcx, %rcx

// Store
lea addresses_WT+0xabd0, %rax
nop
nop
and $27253, %r9
movl $0x51525354, (%rax)
nop
nop
sub $2465, %rax

// Faulty Load
lea addresses_A+0x174d0, %r15
nop
nop
nop
cmp $37808, %rax
vmovaps (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 19526, '16': 2, '12': 4, '07': 1, '45': 1913, '48': 367, 'af': 1, '8b': 1, '1e': 14}
00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 48 00 00 00 00 00 00 00 00 00 00 00 45 00 48 00 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 48 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 48 00 00 00 00 00 45 00 00 00 1e 00 00 45 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1e 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 48 00 00 00 00 00 48 00 00 48 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 48 00 00 45 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 45 48 48 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 48 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 45 00 00 00 00 48 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 45 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 45 00 00 00 00 00 00 45 00 00 45 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 48 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 45 48 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 45 00 45 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00
*/
