.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x169e5, %r8
nop
nop
nop
nop
nop
cmp $1856, %rbp
movb $0x61, (%r8)
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x183b5, %rsi
lea addresses_D_ht+0x1b3d5, %rdi
nop
nop
nop
sub %r12, %r12
mov $54, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x2fd5, %rsi
lea addresses_A_ht+0x21bd, %rdi
nop
nop
nop
nop
xor $4600, %rax
mov $17, %rcx
rep movsb
nop
nop
nop
and $28178, %rbp
lea addresses_A_ht+0x8b5b, %rdx
nop
nop
nop
nop
nop
inc %rax
mov (%rdx), %r12
nop
nop
nop
nop
nop
dec %rax
lea addresses_A_ht+0x166cc, %rbp
nop
nop
nop
nop
add $55803, %rax
and $0xffffffffffffffc0, %rbp
vmovntdqa (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
nop
nop
and $64441, %rdi
lea addresses_WT_ht+0xe9b5, %rsi
and %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x1e5ad, %rsi
lea addresses_A_ht+0x1558d, %rdi
and %rax, %rax
mov $10, %rcx
rep movsl
add $1067, %rcx
lea addresses_WT_ht+0x710, %rdx
nop
nop
nop
dec %r12
movb $0x61, (%rdx)
nop
nop
nop
nop
xor $53150, %rcx
lea addresses_D_ht+0x1a5fd, %rsi
lea addresses_WT_ht+0x2dfd, %rdi
nop
nop
nop
and $47622, %rdx
mov $111, %rcx
rep movsq
nop
nop
nop
add $55542, %rdx
lea addresses_D_ht+0xf6d5, %rsi
lea addresses_normal_ht+0x1c535, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $92, %rcx
rep movsl
add $9724, %rax
lea addresses_UC_ht+0x1a3d5, %rdx
nop
nop
nop
inc %rcx
movb (%rdx), %r12b
nop
nop
sub $12039, %rcx
lea addresses_UC_ht+0x1e199, %rsi
lea addresses_D_ht+0x3655, %rdi
nop
nop
nop
sub $72, %r12
mov $112, %rcx
rep movsl
nop
nop
nop
nop
and $49087, %rbp
lea addresses_UC_ht+0x181f5, %r12
mfence
mov (%r12), %ecx
nop
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0xc6d5, %rsi
lea addresses_A_ht+0x118a9, %rdi
nop
nop
nop
nop
xor %rax, %rax
mov $90, %rcx
rep movsw
and %r12, %r12
lea addresses_WT_ht+0x17fbf, %rbp
nop
and $14597, %rax
mov (%rbp), %di
nop
nop
nop
add $51092, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rbp
push %rcx
push %rsi

// Load
mov $0xed5, %r11
nop
nop
nop
sub %rsi, %rsi
mov (%r11), %r13
nop
and %rax, %rax

// Store
lea addresses_US+0x1f3d5, %rcx
nop
nop
nop
cmp $42906, %r10
movb $0x51, (%rcx)
nop
nop
nop
nop
add $47533, %rax

// Store
lea addresses_normal+0x24c6, %r11
nop
nop
nop
nop
nop
xor $19163, %r10
movw $0x5152, (%r11)
xor %r11, %r11

// Store
mov $0xb31, %rsi
nop
nop
nop
sub $23647, %r13
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
nop
nop
nop
and %r13, %r13

// Load
lea addresses_D+0x1f815, %rbp
nop
nop
nop
nop
nop
inc %rcx
mov (%rbp), %si
cmp $50268, %r11

// Store
mov $0xfd5, %r10
nop
nop
cmp $24680, %rax
movb $0x51, (%r10)
nop
cmp %rcx, %rcx

// Load
lea addresses_UC+0x1bd5, %rbp
nop
nop
nop
sub %r10, %r10
movb (%rbp), %r13b
nop
nop
nop
nop
nop
add %r13, %r13

// Faulty Load
lea addresses_US+0x17d5, %rsi
nop
nop
nop
nop
nop
cmp $8908, %rbp
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_P', 'size': 8, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
