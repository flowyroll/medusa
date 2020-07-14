.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x96c9, %r9
nop
nop
nop
nop
nop
sub $16671, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r9)
nop
nop
and $57404, %rcx
lea addresses_D_ht+0x2909, %rsi
lea addresses_A_ht+0xd305, %rdi
nop
dec %r8
mov $93, %rcx
rep movsb
sub %r8, %r8
lea addresses_D_ht+0x19d49, %rsi
lea addresses_A_ht+0x19409, %rdi
dec %r10
mov $16, %rcx
rep movsw
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x4f29, %r10
clflush (%r10)
cmp %r8, %r8
movl $0x61626364, (%r10)
sub $55980, %rsi
lea addresses_WC_ht+0x4749, %r10
nop
mfence
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0xe6c9, %r9
nop
nop
nop
inc %r15
movb $0x61, (%r9)
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x110c9, %rsi
lea addresses_UC_ht+0x1b3c9, %rdi
cmp %r10, %r10
mov $106, %rcx
rep movsq
nop
nop
nop
lfence
lea addresses_UC_ht+0xf99, %r9
nop
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm2
and $0xffffffffffffffc0, %r9
vmovntdq %ymm2, (%r9)
nop
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x2789, %r9
nop
sub %rdi, %rdi
movups (%r9), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
xor $25057, %rcx
lea addresses_D_ht+0x18f09, %rcx
nop
nop
dec %r9
mov (%rcx), %si
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x18d49, %rdi
nop
mfence
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rdi)
xor %r9, %r9
lea addresses_WC_ht+0x96c9, %rsi
lea addresses_normal_ht+0x1e627, %rdi
xor %r15, %r15
mov $82, %rcx
rep movsw
nop
nop
nop
inc %r15
lea addresses_D_ht+0x194c9, %rcx
nop
cmp %r9, %r9
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x14069, %r9
clflush (%r9)
nop
nop
nop
nop
add $57111, %r15
movb $0x61, (%r9)
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0xfdc9, %rdi
nop
nop
nop
cmp %rsi, %rsi
movb (%rdi), %r9b
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0xf049, %rdi
nop
and $30593, %r11
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
cmp $33571, %rdi

// Faulty Load
lea addresses_US+0x12ec9, %rcx
nop
nop
add %rdx, %rdx
mov (%rcx), %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 41}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
