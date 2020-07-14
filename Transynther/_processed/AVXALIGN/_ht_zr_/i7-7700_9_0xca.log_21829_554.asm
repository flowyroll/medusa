.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x7dc2, %rsi
lea addresses_normal_ht+0xd5c2, %rdi
clflush (%rsi)
nop
nop
nop
cmp $57243, %rdx
mov $50, %rcx
rep movsb
add $31720, %rdx
lea addresses_normal_ht+0x1ab42, %rdx
nop
nop
sub %r12, %r12
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
dec %r12
lea addresses_WC_ht+0x1cee2, %r12
dec %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r12)
add $30871, %rbp
lea addresses_normal_ht+0x14742, %rbp
nop
nop
nop
xor $25073, %r8
movups (%rbp), %xmm6
vpextrq $0, %xmm6, %rcx
nop
inc %rcx
lea addresses_A_ht+0x750c, %rsi
lea addresses_D_ht+0x6582, %rdi
clflush (%rdi)
nop
nop
cmp $37237, %rdx
mov $114, %rcx
rep movsl
nop
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x1d242, %r12
nop
nop
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
and $0xffffffffffffffc0, %r12
vmovntdq %ymm1, (%r12)
nop
nop
nop
add %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rdi
push %rsi

// Load
lea addresses_WC+0xb882, %rdi
nop
nop
nop
nop
and $26314, %rsi
vmovaps (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
nop
dec %rbx

// Store
mov $0x14842700000007c2, %r9
nop
nop
nop
nop
dec %r13
movl $0x51525354, (%r9)
nop
nop
inc %rbx

// Load
lea addresses_RW+0xc5c2, %r11
clflush (%r11)
nop
nop
nop
nop
xor %rbp, %rbp
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_US+0x189c2, %rdi
nop
nop
nop
nop
nop
add $21403, %r13
movntdqa (%rdi), %xmm7
vpextrq $1, %xmm7, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC_ht'}}
{'44': 6867, '00': 12010, '45': 2952}
45 00 45 00 44 00 44 00 44 45 44 45 00 00 44 00 44 00 44 45 00 45 00 00 00 44 00 44 00 00 44 00 00 00 45 00 00 00 45 44 44 00 00 00 45 00 44 45 00 00 44 44 00 45 00 45 00 44 00 45 00 44 00 00 45 00 44 00 44 00 00 44 00 44 00 00 44 00 45 00 00 45 00 44 00 45 00 45 00 44 00 44 00 00 44 00 44 44 00 00 45 00 00 00 44 00 00 44 45 00 00 00 00 00 45 00 00 44 45 00 00 45 00 44 00 00 00 00 00 44 00 44 00 44 45 00 44 00 44 00 00 44 45 00 00 44 00 45 00 00 45 00 00 44 00 00 00 00 00 44 00 44 00 44 00 00 45 00 44 00 44 00 44 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 44 00 00 45 44 45 00 45 00 00 45 00 44 44 00 44 45 00 00 00 44 00 44 45 00 00 44 00 44 00 00 44 44 00 44 00 00 45 00 44 44 00 44 45 00 44 00 44 00 00 00 44 45 00 00 44 00 44 45 00 44 00 00 00 44 00 44 00 44 00 44 44 00 44 00 00 44 00 44 00 00 44 45 00 44 00 44 00 00 00 44 00 44 45 00 44 00 44 00 44 00 44 00 45 00 44 00 00 44 00 44 00 00 00 44 00 00 00 44 00 00 00 00 45 00 44 45 00 45 00 44 00 45 00 44 45 00 44 00 44 00 45 00 00 00 44 00 44 00 00 00 44 00 00 44 00 44 00 00 45 00 45 44 45 00 44 00 44 45 00 00 44 00 45 00 44 45 00 44 45 00 00 00 00 44 00 44 44 00 44 44 00 44 45 44 00 44 00 00 45 00 00 44 00 45 00 45 00 44 00 44 00 00 44 00 00 00 44 00 45 00 00 00 44 45 00 00 00 44 00 44 00 00 44 00 44 00 00 44 00 00 44 45 00 00 44 44 00 44 45 00 00 00 44 45 00 00 44 45 00 44 00 00 44 44 00 44 00 00 44 00 00 00 44 00 45 00 00 44 44 00 44 00 45 00 44 00 00 00 44 45 00 44 00 44 44 00 44 44 00 44 00 44 00 44 45 00 44 00 44 00 00 44 00 44 00 00 44 44 00 44 00 00 44 00 44 45 00 44 00 00 00 44 00 00 44 00 44 00 00 45 00 44 00 00 44 00 44 45 00 44 00 00 00 44 45 44 00 45 00 44 00 44 44 00 44 00 00 00 44 44 00 44 00 00 44 44 00 45 00 44 00 45 00 44 00 45 00 44 45 00 45 00 44 45 00 45 45 00 44 00 44 00 00 44 00 00 44 45 00 44 00 44 44 00 45 00 45 00 44 00 44 45 00 44 00 44 00 00 00 00 45 00 00 44 45 00 44 00 45 00 44 00 45 00 44 00 44 44 00 00 00 44 45 00 00 00 45 00 44 44 00 44 45 00 45 00 00 00 00 00 00 00 00 00 00 44 00 44 45 00 45 00 44 44 00 44 00 44 44 00 44 00 45 00 00 44 44 00 44 00 44 00 45 00 44 00 00 44 45 00 44 00 00 45 00 44 45 44 44 00 00 45 00 45 00 00 45 00 44 00 00 44 00 45 00 00 00 45 00 44 00 44 45 00 00 44 45 00 44 45 44 45 00 45 44 00 45 00 00 44 00 00 00 00 00 44 00 00 00 44 00 00 00 44 45 00 00 44 00 00 44 00 00 44 00 44 44 44 00 44 45 44 00 00 44 45 00 44 44 00 44 00 00 45 00 44 00 00 44 45 00 00 00 44 00 00 00 00 44 00 44 00 44 00 00 44 45 00 44 00 00 44 00 00 44 00 44 44 00 44 00 44 00 00 00 44 00 44 45 00 00 44 00 00 44 45 00 44 00 44 45 00 44 00 00 45 00 44 00 00 44 00 00 00 44 00 44 45 00 00 44 44 00 45 00 00 45 00 45 00 44 45 00 44 00 44 00 00 44 45 00 00 00 44 00 44 45 00 00 00 45 00 00 00 00 44 00 45 00 44 00 00 44 00 44 00 00 44 00 00 45 00 44 00 00 44 00 44 00 44 44 00 00 00 45 00 00 00 45 00 45 00 44 45 00 00 44 44 00 44 00 44 00 00 44 00 44 00 44 00 00 00 00 44 00 44 00 45 00 44 00 44 44 00 00 44 44 00 44 44 00 44 00 45 00 45 00 44 45 00 44 00 44 45 00 44 45 00 44 00 00
*/
