.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xb267, %rdx
nop
nop
nop
mfence
and $0xffffffffffffffc0, %rdx
movaps (%rdx), %xmm0
vpextrq $1, %xmm0, %r8
sub $14872, %r15
lea addresses_A_ht+0xd1c7, %rax
nop
xor $53750, %rdi
movw $0x6162, (%rax)
nop
nop
cmp $53043, %rdi
lea addresses_WT_ht+0xd407, %rdi
nop
nop
sub %r12, %r12
mov (%rdi), %dx
nop
nop
nop
add $30172, %r11
lea addresses_normal_ht+0x10dc7, %r15
nop
dec %rdx
movl $0x61626364, (%r15)
xor $28699, %r11
lea addresses_WC_ht+0x18dc7, %r8
nop
nop
nop
cmp $56886, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x17c7, %rdx
clflush (%rdx)
nop
add $17531, %rdi
mov (%rdx), %r15w
nop
inc %rax
lea addresses_normal_ht+0x4fc7, %r8
cmp %r12, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm2
movups %xmm2, (%r8)
nop
sub $62097, %rdi
lea addresses_WT_ht+0x7547, %rsi
lea addresses_UC_ht+0x2977, %rdi
clflush (%rsi)
nop
add $10099, %r8
mov $82, %rcx
rep movsw
and %r12, %r12
lea addresses_UC_ht+0xd017, %rsi
clflush (%rsi)
xor $7423, %rcx
movb (%rsi), %r11b
nop
and %rsi, %rsi
lea addresses_D_ht+0x1473f, %rcx
nop
sub $15396, %r8
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %rsi
nop
xor $1362, %rsi
lea addresses_D_ht+0x8087, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x16c87, %rax
nop
nop
nop
and $22417, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %rax
movntdq %xmm4, (%rax)
inc %rcx
lea addresses_D_ht+0x1bdc7, %rax
clflush (%rax)
nop
nop
nop
nop
nop
sub %r11, %r11
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
sub $3275, %rax
lea addresses_normal_ht+0xfc07, %rsi
lea addresses_normal_ht+0xa5c7, %rdi
nop
nop
nop
nop
nop
add $29885, %rdx
mov $6, %rcx
rep movsb
and %r8, %r8
lea addresses_WC_ht+0x1b6f7, %rsi
lea addresses_UC_ht+0x5c7, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $119, %rcx
rep movsq
add %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdx

// Store
lea addresses_UC+0x1a8c7, %r14
xor $33993, %r15
movb $0x51, (%r14)
nop
nop
and $13044, %r9

// Store
lea addresses_normal+0x99c7, %r14
nop
nop
nop
nop
and %r13, %r13
movl $0x51525354, (%r14)
sub %r9, %r9

// Faulty Load
lea addresses_US+0x45c7, %rdx
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%rdx), %r9w
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'same': True, 'congruent': 4, 'NT': True, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}}
{'00': 89}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
