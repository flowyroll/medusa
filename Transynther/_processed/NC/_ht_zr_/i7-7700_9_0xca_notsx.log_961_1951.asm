.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xaa65, %rsi
lea addresses_D_ht+0x1bfc0, %rdi
nop
nop
cmp $14464, %r8
mov $53, %rcx
rep movsw
nop
sub %rax, %rax
lea addresses_D_ht+0x13dfd, %rsi
lea addresses_A_ht+0x143cd, %rdi
nop
nop
nop
sub %r14, %r14
mov $106, %rcx
rep movsw
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x1e38f, %rsi
lea addresses_WT_ht+0x156cd, %rdi
nop
nop
and $45706, %r12
mov $84, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x124dd, %rsi
lea addresses_WT_ht+0x1d23d, %rdi
inc %r13
mov $115, %rcx
rep movsb
nop
add %rdi, %rdi
lea addresses_D_ht+0x1203d, %r13
clflush (%r13)
nop
nop
xor $52631, %r8
and $0xffffffffffffffc0, %r13
movntdqa (%r13), %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x38cd, %r14
and %rdi, %rdi
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
cmp %r14, %r14
lea addresses_UC_ht+0x1ac3d, %r14
nop
nop
nop
nop
nop
cmp $21647, %rcx
movl $0x61626364, (%r14)
nop
nop
sub $43565, %rcx
lea addresses_D_ht+0x3881, %rsi
lea addresses_A_ht+0xf8fd, %rdi
nop
nop
nop
xor $59680, %r13
mov $7, %rcx
rep movsb
nop
sub $742, %rcx
lea addresses_UC_ht+0x11b5b, %r14
nop
nop
nop
nop
nop
add $22281, %r13
movups (%r14), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rcx
push %rdi
push %rsi

// Load
mov $0x43d, %rdi
clflush (%rdi)
add $4124, %rcx
movb (%rdi), %r15b
xor $54520, %r15

// Faulty Load
mov $0x6d7722000000043d, %rdi
sub %r15, %r15
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 99, '47': 11, '44': 4, '46': 847}
46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 47 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 47 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 44 00 46 46 00 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 00 00 46 46 00 46 46 46 46 46 46 00 00 46 00 46 46 46 46 46 46 46 00 46 46 44 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 47 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 47 46 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 47 46 00 46 00 46 46 00 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 47 46 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 47 46 46 00 47 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 47 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 46 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 46 46 46 46 46 46 00 00 46 46 46 46 46 47 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 44 46 46 46 00 47 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46
*/
