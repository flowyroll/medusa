.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xd86d, %rbp
clflush (%rbp)
xor $25559, %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm0
and $0xffffffffffffffc0, %rbp
vmovntdq %ymm0, (%rbp)
add %rbx, %rbx
lea addresses_UC_ht+0xebad, %rdi
nop
nop
add $32691, %r10
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
and %r10, %r10
lea addresses_UC_ht+0x466d, %rax
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%rax)
xor $23311, %rax
lea addresses_normal_ht+0x16d, %rsi
lea addresses_normal_ht+0x1a4cd, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $68, %rcx
rep movsw
nop
nop
nop
and %rax, %rax
lea addresses_WC_ht+0x416d, %rsi
lea addresses_D_ht+0x1bbcd, %rdi
nop
add %rbx, %rbx
mov $1, %rcx
rep movsw
nop
nop
nop
xor $29316, %r13
lea addresses_WT_ht+0xffed, %rsi
nop
nop
xor %r10, %r10
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0xfd15, %rsi
lea addresses_WT_ht+0xc16d, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $109, %rcx
rep movsl
nop
nop
nop
cmp $15486, %r10
lea addresses_A_ht+0x16d2d, %rdi
nop
nop
nop
add %rbp, %rbp
mov (%rdi), %r10
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x1beed, %rsi
lea addresses_WT_ht+0x19a4f, %rdi
and $44815, %r13
mov $94, %rcx
rep movsw
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0xab75, %r13
nop
nop
nop
nop
nop
and $24115, %rdi
movl $0x61626364, (%r13)
nop
nop
nop
cmp $40007, %rdi
lea addresses_A_ht+0xad6d, %rdi
nop
nop
nop
mfence
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %r10
nop
nop
nop
and $29837, %rcx
lea addresses_normal_ht+0xbbed, %rsi
lea addresses_WC_ht+0x153ed, %rdi
clflush (%rdi)
nop
nop
sub $57736, %rax
mov $79, %rcx
rep movsb
dec %rdi
lea addresses_D_ht+0x1e385, %rbp
inc %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rbp)
nop
nop
nop
nop
sub $26009, %r13
lea addresses_normal_ht+0xb96d, %r13
nop
nop
nop
sub %rcx, %rcx
movb (%r13), %r10b
nop
nop
nop
nop
nop
sub $31905, %rcx
lea addresses_normal_ht+0xeaad, %rsi
nop
nop
nop
and %rcx, %rcx
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
add $55695, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdx

// Store
lea addresses_UC+0x18d6d, %r8
nop
nop
nop
nop
nop
add $56500, %r9
movw $0x5152, (%r8)
nop
nop
nop
nop
sub $22887, %r9

// Faulty Load
lea addresses_normal+0x996d, %rdx
add %r15, %r15
vmovaps (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'45': 368, '00': 7, '44': 81}
45 45 00 45 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 44 45 44 45 45 45 45 00 45 45 45 44 44 44 45 45 45 45 45 44 44 44 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 44 45 45 45 45 44 44 44 45 45 44 44 45 45 45 00 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 44 44 45 44 44 44 45 44 45 00 45 45 45 45 45 45 45 45 44 45 44 45 44 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 44 44 44 45 45 45 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 44 44 44 45 45 45 45 45 45 45 45 44 45 44 44 44 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 44 45 45 45 45 45 44 44 44 45 45 45 45 00 45 45 45 45 44 44 45 45 44 44 45 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45
*/
