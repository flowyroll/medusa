.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x12bd6, %rsi
lea addresses_WC_ht+0x506a, %rdi
clflush (%rdi)
nop
nop
add %rbx, %rbx
mov $70, %rcx
rep movsb
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x1446a, %rsi
lea addresses_D_ht+0x186a, %rdi
nop
nop
xor $25678, %r11
mov $69, %rcx
rep movsb
nop
nop
nop
and $19355, %rsi
lea addresses_UC_ht+0xd9ea, %rsi
lea addresses_D_ht+0x13c6a, %rdi
dec %r12
mov $36, %rcx
rep movsb
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x18e6a, %rcx
nop
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
cmp $39026, %r8
lea addresses_A_ht+0x186a, %rcx
nop
sub $55821, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm5
movups %xmm5, (%rcx)
sub %rdi, %rdi
lea addresses_WT_ht+0x6b32, %r11
nop
nop
nop
nop
nop
lfence
movups (%r11), %xmm5
vpextrq $0, %xmm5, %rcx
nop
inc %rcx
lea addresses_UC_ht+0x1b112, %r8
nop
nop
nop
nop
nop
add %r11, %r11
movb $0x61, (%r8)
nop
sub %rbx, %rbx
lea addresses_WC_ht+0xea6a, %r11
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%r11)
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x1cf22, %r8
nop
nop
nop
xor $29854, %r12
mov (%r8), %si
nop
xor $27889, %rbx
lea addresses_D_ht+0x1a6a, %rdi
clflush (%rdi)
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm1, (%rdi)
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1d840, %rsi
lea addresses_WC_ht+0x3406, %rdi
nop
nop
nop
xor %r10, %r10
mov $119, %rcx
rep movsb
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0xfc6a, %rbx
nop
cmp %rcx, %rcx
movw $0x6162, (%rbx)
and %rdi, %rdi
lea addresses_UC_ht+0x1c6a, %rdi
nop
xor %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0xd06a, %rsi
nop
nop
nop
cmp %r8, %r8
movb $0x61, (%rsi)
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1e1ea, %r10
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %r10
vmovntdq %ymm4, (%r10)
nop
nop
nop
nop
nop
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0xa16a, %rsi
cmp $42286, %rbp
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_WT+0x1480c, %rdx
nop
nop
nop
add %r13, %r13
movb $0x51, (%rdx)
nop
sub %rcx, %rcx

// Store
lea addresses_D+0xaa6a, %rdx
clflush (%rdx)
nop
nop
sub %r10, %r10
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
mov $0x5d959e0000000fdc, %r12
nop
nop
nop
nop
xor $64713, %r10
mov $0x5152535455565758, %rcx
movq %rcx, (%r12)
nop
inc %r13

// Faulty Load
lea addresses_WC+0xac6a, %r12
inc %r10
vmovups (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC_ht'}}
{'44': 557, '8c': 1, '48': 1000, '47': 40, '00': 3873, 'ff': 13411, 'a9': 7, '53': 2182, '9a': 1, '12': 3, 'de': 45}
ff ff ff 53 ff ff ff 53 53 00 ff ff ff 44 ff ff 00 ff ff ff ff 00 ff ff 00 ff ff ff ff ff 44 ff 53 ff ff ff ff 53 ff ff ff 00 53 ff ff ff 53 ff 44 ff 44 ff ff ff ff ff ff 48 ff ff ff ff 48 ff ff 53 48 ff 00 ff ff ff ff ff 53 44 ff ff 00 ff ff 00 ff 48 ff ff ff 00 ff ff ff ff 53 48 ff 00 ff ff ff ff 00 ff ff 48 ff ff 00 ff ff ff ff 44 ff 00 44 ff ff ff 53 ff ff 53 ff 48 ff ff ff 00 00 48 53 ff ff ff de ff ff ff ff ff ff 48 ff ff ff 00 ff 53 ff 00 53 00 ff 00 ff ff 53 ff 48 ff 00 48 ff ff 00 53 ff 44 00 00 ff 44 00 ff ff ff 48 00 ff ff 00 53 44 ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff 00 ff 00 ff 00 ff ff ff ff ff 48 ff 44 00 53 ff 53 00 53 ff 44 ff ff ff ff ff ff ff 00 ff 00 ff ff ff ff ff 00 ff ff ff ff ff ff ff ff 00 ff ff de 00 ff ff ff 00 ff 00 ff ff ff ff ff 48 00 ff 53 48 00 ff 00 ff ff ff 00 ff ff 00 00 ff ff 00 ff 00 ff ff ff ff ff ff 48 ff 00 ff ff ff 53 ff ff 00 ff 53 48 53 ff ff ff ff 00 ff ff 48 ff ff 48 ff 53 ff ff 00 ff 00 ff ff 00 ff 44 ff ff ff 48 ff 53 ff 00 ff ff 53 de ff 00 00 ff ff ff 53 00 ff ff ff ff 44 00 ff ff 44 ff ff 00 53 ff ff ff ff 53 ff 53 ff ff 00 ff ff 00 ff ff 00 ff de ff 48 48 ff 00 ff ff ff 00 00 00 00 00 48 00 ff 44 00 ff 00 ff 48 ff 00 ff 53 ff 00 ff ff 00 ff ff 00 ff ff 00 ff ff 00 00 ff ff ff ff 00 ff 48 00 ff ff 00 ff ff ff ff 53 ff ff ff 44 44 00 00 ff ff 53 ff ff ff ff 48 00 00 ff ff ff ff ff 53 ff ff ff ff 00 53 ff 48 ff ff ff ff ff ff ff 48 ff 00 00 ff 44 ff 00 ff 00 ff ff 00 ff 00 ff ff 53 53 ff 53 ff ff 53 53 ff ff 53 00 00 ff ff 44 ff ff ff ff ff 00 44 ff ff 53 ff ff 53 ff ff 53 ff 44 ff ff ff 00 ff ff ff ff ff ff 00 ff ff 44 ff ff ff ff ff ff ff ff ff 00 ff 48 00 53 ff ff 53 ff 53 48 ff 00 ff ff ff ff 00 00 ff 53 ff 53 00 48 ff ff ff 00 53 ff 00 ff ff ff ff ff ff 53 ff ff 00 ff ff ff ff ff 53 ff 00 00 ff ff ff 00 ff ff ff 48 44 00 ff 48 ff 53 ff ff ff 00 ff ff ff 00 00 48 48 00 ff ff ff ff 00 00 ff 53 ff 53 48 ff 53 ff ff 00 00 ff ff ff ff 44 ff ff ff ff 53 00 ff ff ff ff 48 ff ff 00 00 00 00 ff ff ff 00 ff ff 44 ff ff ff ff ff 53 53 ff ff ff 00 ff 00 ff 53 53 ff ff ff ff 53 48 ff ff 53 ff 00 ff ff ff ff ff ff ff 44 00 53 ff 53 ff ff ff 9a 48 ff ff ff 00 ff ff ff 00 ff 53 ff 53 ff 53 ff 00 ff ff ff 48 44 ff ff 00 ff ff ff 00 ff ff 00 00 53 ff ff ff ff ff ff ff ff 48 ff ff ff ff ff ff 44 ff 48 ff ff ff 53 ff 00 53 ff ff ff 00 ff ff 00 ff ff 00 ff ff ff 53 00 ff ff 48 ff ff ff 53 ff ff ff ff ff ff ff 53 53 00 53 ff ff ff ff ff ff ff ff 53 ff ff ff 00 ff ff ff ff ff 00 ff ff ff 48 ff ff 00 ff ff ff 00 53 00 ff ff ff ff 00 ff 00 00 00 ff ff 00 ff ff ff ff ff ff ff 00 ff ff ff ff 48 ff ff 00 ff 53 ff 00 53 53 ff ff ff ff ff ff ff ff 44 44 53 ff ff ff ff 00 ff 53 ff 53 ff 53 ff ff 48 ff ff ff 00 ff 00 ff 53 ff ff ff ff ff ff 48 ff ff 53 ff 53 ff ff ff ff 00 ff ff 00 00 ff ff 48 ff ff 53 44 00 48 ff 00 00 ff ff 00 ff ff ff ff 00 ff 00 00 00 00 00 ff 53 ff 53 ff ff 00 ff 00 ff ff ff ff 00 53 53 ff 48 ff 48 53 ff 53 ff 44 53 ff ff ff ff ff ff 53 53 ff 00 48 ff 53 53 00 ff ff ff 53 ff ff 00 53 00 53
*/
