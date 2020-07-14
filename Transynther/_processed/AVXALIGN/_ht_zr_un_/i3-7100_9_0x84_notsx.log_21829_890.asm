.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x946c, %rsi
lea addresses_WT_ht+0xa784, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r12
mov $77, %rcx
rep movsw
nop
cmp %r12, %r12
lea addresses_A_ht+0x158ac, %rsi
lea addresses_D_ht+0x10a0c, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $127, %rcx
rep movsb
inc %rcx
lea addresses_D_ht+0xd22c, %r10
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, (%r10)
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x1d4cc, %rsi
lea addresses_UC_ht+0x782c, %rdi
clflush (%rsi)
cmp $40542, %rdx
mov $96, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x9f7c, %rdx
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%rdx), %r12d
inc %rcx
lea addresses_normal_ht+0x18a50, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rdx)
nop
add %rdi, %rdi
lea addresses_A_ht+0x1ee2c, %rdx
nop
nop
dec %rsi
movb $0x61, (%rdx)
nop
nop
nop
sub $55476, %r10
lea addresses_normal_ht+0xe22c, %r10
clflush (%r10)
nop
nop
nop
nop
sub $58005, %rcx
mov $0x6162636465666768, %r12
movq %r12, (%r10)
nop
nop
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x1842c, %rcx
nop
nop
nop
nop
nop
and %r14, %r14
mov (%rcx), %r10w
inc %rcx
lea addresses_UC_ht+0x1b62c, %r14
nop
sub %r12, %r12
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
nop
sub $13127, %r14
lea addresses_UC_ht+0x134ec, %rsi
lea addresses_WC_ht+0x102c, %rdi
nop
nop
cmp %r10, %r10
mov $106, %rcx
rep movsw
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x1ce08, %rcx
inc %r10
movw $0x6162, (%rcx)
nop
nop
cmp $10150, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WC+0x66ec, %r11
nop
inc %r10
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
sub %rbx, %rbx

// Faulty Load
lea addresses_UC+0x262c, %rbx
nop
nop
cmp %rsi, %rsi
movntdqa (%rbx), %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'60': 1, '47': 6382, '4d': 1, '49': 30, '00': 7509, '71': 1, '45': 7903, '08': 2}
00 45 00 00 00 00 00 00 45 47 00 47 45 47 47 47 45 45 47 47 00 45 00 00 00 45 00 00 00 45 00 47 47 45 47 47 45 45 47 00 45 45 00 00 00 45 00 47 47 45 45 47 45 45 47 00 45 45 00 47 47 45 47 00 00 45 45 00 00 45 47 00 47 45 45 00 00 45 45 00 47 45 45 00 00 47 45 45 00 00 45 45 47 47 45 45 00 47 00 45 00 00 00 45 47 47 47 45 45 47 00 00 45 00 00 47 45 47 00 00 45 45 00 00 45 47 47 45 45 00 47 45 45 47 47 45 47 00 00 45 47 47 45 00 00 00 45 00 47 00 45 00 47 00 45 47 00 00 45 00 47 00 45 47 47 45 47 47 00 45 00 47 47 45 45 47 47 45 47 47 00 45 00 00 00 45 45 47 47 45 45 47 47 45 47 00 45 47 47 00 45 45 00 00 45 45 00 45 45 47 00 47 45 00 47 00 45 45 00 47 47 45 00 47 47 45 45 47 00 00 45 47 00 00 45 47 00 00 45 45 47 47 45 45 47 00 45 00 00 45 45 47 00 00 45 45 47 47 45 45 47 00 45 47 47 45 47 45 45 00 00 00 45 00 00 47 45 45 47 47 45 45 47 00 45 45 47 47 45 47 47 45 45 00 47 45 45 47 00 45 00 00 47 45 47 00 47 45 45 47 00 45 47 00 45 45 47 47 47 45 47 47 00 45 47 00 00 45 45 00 00 45 45 47 00 45 45 00 47 47 45 00 00 47 45 45 47 47 45 45 47 45 45 47 47 47 45 45 00 00 45 45 00 00 45 45 00 00 47 45 00 47 00 45 47 00 45 47 47 47 45 45 00 00 45 00 47 45 47 47 00 45 47 47 00 45 00 00 00 45 00 47 00 45 00 00 45 45 00 45 47 47 45 00 00 45 45 47 47 00 45 47 00 47 45 47 00 00 45 45 00 00 47 45 45 00 00 45 45 47 47 00 45 47 00 00 45 47 00 00 45 45 47 00 45 45 47 47 45 00 47 45 45 00 47 00 45 00 00 45 47 00 45 00 00 00 45 00 00 45 45 00 00 45 45 47 00 45 45 00 47 00 45 00 47 47 45 00 47 00 45 47 00 47 45 00 45 45 00 47 45 45 00 47 47 45 45 00 47 45 45 00 00 45 00 00 45 45 47 00 45 45 47 47 45 00 00 45 45 00 00 47 47 00 45 45 00 47 45 45 47 00 47 45 45 47 00 45 00 47 45 47 00 45 45 47 00 00 45 45 47 47 45 47 00 45 45 00 47 45 45 00 00 45 47 00 00 45 00 00 00 45 47 47 47 45 00 00 00 45 47 47 45 45 00 47 45 47 00 45 45 47 00 00 45 00 00 45 45 47 47 00 45 00 47 45 45 00 00 47 45 45 00 00 45 45 47 00 45 47 47 45 45 00 00 47 45 45 47 00 45 45 00 47 45 45 47 00 00 45 47 47 00 45 00 00 00 45 45 00 47 45 00 47 45 45 00 45 45 47 00 00 45 00 00 00 45 47 00 47 45 45 47 00 45 45 00 00 45 45 47 47 00 45 00 00 00 45 47 47 45 47 47 00 45 47 47 00 45 45 00 00 45 45 00 47 45 47 47 45 45 00 00 45 47 47 47 45 47 47 00 45 47 47 47 45 47 00 00 45 47 47 47 45 00 47 45 45 00 00 45 45 47 45 00 00 45 00 00 45 45 00 47 47 45 45 47 45 47 00 00 45 45 00 00 45 47 47 47 45 45 47 47 45 47 47 45 45 47 47 45 00 00 00 45 00 00 45 00 00 00 45 45 47 47 45 47 00 45 45 00 47 00 45 00 00 00 45 45 47 47 45 00 00 00 45 45 00 47 45 45 00 47 45 45 00 00 00 45 00 47 00 45 00 47 47 47 47 45 45 00 00 45 45 00 47 45 45 00 47 47 45 00 47 47 45 47 47 00 45 47 47 47 45 45 47 47 00 45 00 47 00 45 45 47 00 45 45 00 00 47 45 45 00 00 45 00 00 45 45 47 47 47 45 45 47 47 45 45 00 00 45 45 47 00 45 47 47 45 47 47 47 45 47 47 47 45 08 00 00 45 00 00 45 45 47 00 00 45 47 47 47 45 45 00 00 45 45 47 00 00 45 47 47 47 45 45 47 47 45 45 00 47 00 45 00 00 00 45 00 47 00 45 00 00 47 45 47 47 45 45 47 47 45 47 00 47 45 00 00
*/
