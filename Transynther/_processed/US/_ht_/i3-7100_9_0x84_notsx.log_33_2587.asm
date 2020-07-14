.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12aec, %rcx
nop
nop
dec %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
and $0xffffffffffffffc0, %rcx
vmovaps %ymm1, (%rcx)
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x6b74, %r14
nop
nop
nop
cmp $19155, %r15
mov (%r14), %r8w
nop
nop
cmp $35949, %rbp
lea addresses_WT_ht+0x21c4, %rsi
lea addresses_UC_ht+0x12d74, %rdi
nop
nop
xor %r11, %r11
mov $108, %rcx
rep movsq
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x18c74, %r15
add %rdi, %rdi
mov (%r15), %si
nop
nop
nop
nop
nop
inc %r15
lea addresses_D_ht+0x14f74, %rcx
xor %r15, %r15
mov (%rcx), %rbx
nop
nop
sub $22096, %rdi
lea addresses_D_ht+0x1a8bd, %rsi
lea addresses_D_ht+0x15174, %rdi
nop
nop
and $5118, %r15
mov $11, %rcx
rep movsb
nop
nop
nop
add $2045, %r15
lea addresses_WT_ht+0x15af4, %r15
cmp $34087, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r15)
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rbx

// Faulty Load
lea addresses_US+0x1cf74, %r8
and $9545, %r11
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'49': 31, '46': 2}
49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49
*/
