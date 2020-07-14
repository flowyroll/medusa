.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x512e, %r8
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
and $0xffffffffffffffc0, %r8
vmovaps %ymm0, (%r8)
add %rbp, %rbp
lea addresses_A_ht+0x70ae, %rax
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movups (%rax), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
and $53083, %r8
lea addresses_D_ht+0x14aae, %rdx
nop
add $34855, %r13
mov $0x6162636465666768, %r8
movq %r8, (%rdx)
nop
nop
nop
dec %rbp
lea addresses_A_ht+0x1257e, %r15
nop
nop
nop
sub %rsi, %rsi
movups (%r15), %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x442e, %rsi
lea addresses_WC_ht+0x17cae, %rdi
nop
nop
nop
add $34312, %r15
mov $36, %rcx
rep movsl
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x555c, %rsi
lea addresses_D_ht+0x66a2, %rdi
nop
nop
nop
nop
nop
and $51303, %r8
mov $72, %rcx
rep movsb
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x17d2e, %rdi
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
nop
xor $2753, %rcx
lea addresses_WC_ht+0x128ae, %rsi
lea addresses_normal_ht+0x4ae, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $78, %rcx
rep movsq
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x1621e, %r8
nop
nop
xor $65115, %rdx
vmovups (%r8), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rdi
push %rsi

// Faulty Load
lea addresses_RW+0x14cae, %rdi
nop
nop
sub %r8, %r8
vmovaps (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rsi
pop %rdi
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'45': 705, '48': 17497, '00': 3627}
48 48 48 48 48 48 48 48 00 48 00 48 48 45 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 45 00 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 00 48 48 00 48 45 00 48 48 48 48 00 48 48 48 48 00 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 45 48 48 48 48 48 00 48 48 00 48 48 48 48 00 48 48 48 48 48 00 48 00 00 48 00 48 48 00 48 00 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 00 48 00 48 48 45 48 48 48 48 00 48 48 00 48 00 48 48 00 48 48 00 48 45 00 00 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 45 48 48 00 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 00 48 45 00 48 00 48 48 48 48 45 00 48 48 48 00 48 48 00 48 00 00 48 48 48 48 48 48 45 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 00 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 45 00 48 00 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 00 48 48 00 48 48 00 48 45 48 48 48 48 48 48 48 48 48 48 45 00 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 00 48 48 45 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 48 45 00 48 48 48 45 00 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 00 48 48 00 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 45 00 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 00 48 48 48 48 45 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 45 48 48 00 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 00 48 00 48 48 00 48 48 48 48 00 48 48 00 48 48 00 48 00 48 48 48 48 48 48 45 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 45 48 48 45 00 48 48 48 00 48 48 45 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 45 48 48 48 48 48 48 48 48 48 48 45 48 48 00 48 48 48 48 48 00 48 48 00 48 48 00 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 00 48 45 00 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 00 48 48 48 48 00 48 48 45 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 45 00 48 48 48 48 00 48 48 48 48 48 48 00 48 48 45 48 48 48 48 48 48 48 48 48 48 00 48 00 48 45 00 48 48 00 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 00 48 48 00 48
*/
