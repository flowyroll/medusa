.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x3a58, %rsi
lea addresses_normal_ht+0x1e758, %rdi
nop
nop
nop
lfence
mov $100, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $61553, %r8
lea addresses_D_ht+0x1bc58, %r12
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %r12
movntdq %xmm1, (%r12)
nop
nop
nop
nop
nop
xor $14074, %r12
lea addresses_WT_ht+0x4578, %rsi
lea addresses_D_ht+0x5a48, %rdi
nop
nop
nop
sub $24988, %r10
mov $72, %rcx
rep movsl
nop
nop
nop
nop
sub $19898, %r10
lea addresses_WC_ht+0xcf98, %rsi
lea addresses_A_ht+0x38, %rdi
nop
add $27179, %rdx
mov $52, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $53015, %r12
lea addresses_WT_ht+0x11038, %rsi
lea addresses_normal_ht+0xdc58, %rdi
nop
nop
nop
and %r8, %r8
mov $35, %rcx
rep movsq
nop
add $20220, %rsi
lea addresses_A_ht+0x8d98, %rsi
lea addresses_A_ht+0x16038, %rdi
nop
xor %rax, %rax
mov $12, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x9420, %rsi
lea addresses_D_ht+0x2cd8, %rdi
nop
nop
xor %r8, %r8
mov $65, %rcx
rep movsl
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x4458, %r10
nop
nop
nop
nop
nop
xor %rsi, %rsi
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
nop
sub %rax, %rax
lea addresses_WT_ht+0x15058, %rsi
lea addresses_A_ht+0x10458, %rdi
cmp %r12, %r12
mov $8, %rcx
rep movsb
nop
nop
nop
cmp $1019, %rax
lea addresses_D_ht+0x1b458, %rsi
lea addresses_UC_ht+0x17098, %rdi
clflush (%rdi)
nop
nop
add $17883, %r12
mov $25, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $45146, %rsi
lea addresses_A_ht+0x1cb58, %rsi
lea addresses_WT_ht+0xbad8, %rdi
clflush (%rsi)
xor $15661, %r10
mov $119, %rcx
rep movsw
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x2cf1, %r12
nop
nop
dec %rdi
movb (%r12), %r8b
nop
xor $54471, %r8
lea addresses_D_ht+0x1dc58, %r12
nop
nop
nop
nop
nop
dec %r8
mov (%r12), %rdx
nop
nop
nop
nop
nop
sub $57773, %rax
lea addresses_WT_ht+0xe758, %rsi
lea addresses_UC_ht+0x12a58, %rdi
clflush (%rsi)
add $6950, %r8
mov $95, %rcx
rep movsq
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1cb98, %rsi
lea addresses_WC_ht+0x19b8, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $27126, %rdx
mov $48, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdx
push %rsi

// Load
lea addresses_D+0x1dc58, %rsi
nop
nop
nop
and $58443, %rdx
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_WC+0x1f136, %rsi
xor %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
nop
nop
nop
nop
nop
xor $41933, %rbp

// Store
lea addresses_D+0x2438, %rdx
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovaps %ymm4, (%rdx)
inc %r11

// Store
lea addresses_D+0x1dc58, %rcx
nop
sub $62519, %rbp
movl $0x51525354, (%rcx)
nop
xor $17289, %r11

// Store
lea addresses_UC+0x18f6c, %rsi
nop
nop
inc %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
nop
nop
add $49617, %r15

// Faulty Load
lea addresses_D+0x1dc58, %rsi
nop
nop
nop
nop
nop
xor $57759, %r15
mov (%rsi), %cx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
