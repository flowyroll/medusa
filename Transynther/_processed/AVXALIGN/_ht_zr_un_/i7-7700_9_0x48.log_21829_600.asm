.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xec65, %rbx
nop
nop
nop
nop
nop
add $32854, %r13
vmovups (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
nop
dec %r8
lea addresses_A_ht+0x1e8a5, %rbx
nop
nop
nop
nop
inc %r10
mov $0x6162636465666768, %rax
movq %rax, (%rbx)
nop
cmp $64354, %rax
lea addresses_D_ht+0xbeb5, %r8
nop
nop
cmp $15861, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%r8)
nop
nop
nop
nop
nop
cmp $39142, %r8
lea addresses_A_ht+0x13c75, %r12
xor %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r12)
nop
and $24969, %rbp
lea addresses_UC_ht+0xd875, %rsi
lea addresses_normal_ht+0x7f85, %rdi
nop
nop
nop
and %rax, %rax
mov $22, %rcx
rep movsq
nop
xor %r12, %r12
lea addresses_UC_ht+0x1a6c5, %r12
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %r12
movntdq %xmm4, (%r12)
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1a75, %rsi
lea addresses_D_ht+0x18675, %rdi
nop
nop
nop
nop
and $63682, %rbp
mov $106, %rcx
rep movsb
nop
add %r12, %r12
lea addresses_normal_ht+0x4ae1, %rsi
lea addresses_WT_ht+0x13f85, %rdi
nop
nop
nop
inc %rax
mov $83, %rcx
rep movsb
nop
nop
inc %rax
lea addresses_WT_ht+0x4401, %rbx
clflush (%rbx)
nop
nop
nop
nop
dec %r10
mov (%rbx), %ecx
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x17b95, %rsi
lea addresses_normal_ht+0xb974, %rdi
clflush (%rdi)
nop
and $32219, %rbp
mov $77, %rcx
rep movsw
nop
and %rbx, %rbx
lea addresses_normal_ht+0x4d15, %r13
cmp $36250, %rbx
movb $0x61, (%r13)
and %r10, %r10
lea addresses_WT_ht+0xb285, %rsi
lea addresses_normal_ht+0x14935, %rdi
clflush (%rsi)
nop
add $7957, %rax
mov $101, %rcx
rep movsb
nop
nop
nop
nop
add $16608, %r8
lea addresses_UC_ht+0xbe75, %rsi
lea addresses_D_ht+0x16d3d, %rdi
nop
nop
cmp $29323, %r10
mov $1, %rcx
rep movsl
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0xce75, %rcx
nop
inc %r13
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rbp
push %rbx
push %rcx

// Faulty Load
lea addresses_D+0x11675, %r15
nop
nop
and $43652, %rcx
vmovaps (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': True}}
{'08': 5, '72': 2, '44': 2, '00': 7651, '48': 785, '46': 13384}
00 48 46 48 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 00 46 00 46 46 00 46 00 46 00 46 46 46 00 46 00 46 00 46 48 00 46 00 46 46 46 46 46 46 46 00 00 46 46 00 46 00 46 46 00 48 00 48 46 46 00 00 00 46 00 46 46 46 46 46 46 00 46 00 46 46 00 00 00 48 46 00 46 00 46 00 00 46 46 00 46 46 46 46 48 08 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 00 00 46 00 46 46 46 46 00 46 00 48 00 46 00 00 46 00 46 46 00 46 46 46 00 46 00 46 00 48 46 46 00 46 00 46 00 48 00 46 46 46 46 46 46 46 46 00 46 46 00 46 00 46 00 46 00 46 00 46 46 46 00 46 00 46 00 46 46 46 46 46 46 46 00 46 46 00 00 46 00 00 00 46 00 46 46 46 46 46 00 48 00 46 00 46 46 00 46 00 46 46 00 46 46 46 00 46 00 46 00 46 00 00 46 00 46 48 00 00 46 00 46 48 46 00 46 46 46 46 00 46 00 00 00 46 00 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 00 46 00 46 00 46 46 46 46 00 46 00 46 00 46 48 46 46 00 00 46 48 00 46 46 46 46 46 46 00 00 46 48 00 46 00 46 46 46 46 00 46 00 46 46 46 00 46 00 00 46 00 46 00 46 48 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 48 00 00 46 00 46 00 46 00 00 46 00 46 46 46 00 46 00 46 00 46 46 00 00 00 00 00 46 46 46 46 00 48 00 46 00 00 46 00 00 46 00 46 46 00 46 00 46 00 46 00 46 46 46 46 46 46 00 00 46 46 46 46 00 46 00 46 46 00 48 46 46 46 00 46 46 46 46 00 46 46 00 46 48 46 00 46 00 46 46 46 46 46 48 00 46 46 00 46 00 46 46 00 46 46 46 46 00 46 46 46 46 00 00 00 46 48 46 46 00 46 00 46 00 46 46 46 46 00 46 00 46 00 46 46 00 00 46 00 46 00 46 00 46 00 46 00 46 46 46 00 48 00 00 46 00 46 00 00 46 00 00 00 00 46 46 00 46 00 46 00 46 00 46 46 00 46 00 00 46 46 46 00 46 46 48 46 46 46 46 00 00 48 00 00 46 00 46 00 46 00 46 00 46 46 46 46 46 46 00 00 46 00 46 46 46 00 46 00 00 46 00 46 00 46 46 00 46 00 46 00 46 46 46 00 46 46 46 48 46 46 46 00 46 46 46 46 46 46 00 46 00 46 46 46 00 46 00 46 48 46 00 46 00 00 46 00 46 46 46 46 46 46 00 46 00 46 00 46 46 46 46 46 46 00 00 46 00 46 48 46 00 46 46 46 48 48 00 46 00 46 00 46 00 00 46 00 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 00 46 46 46 00 46 00 00 46 46 46 48 46 00 46 00 46 00 46 46 00 46 00 00 46 00 46 46 00 46 48 46 46 00 00 46 00 46 00 48 48 46 00 46 48 46 00 46 00 46 46 00 46 46 46 46 46 00 00 00 46 48 46 00 46 00 00 46 00 00 46 46 46 46 00 46 00 46 46 46 00 46 00 46 48 46 46 00 46 00 00 00 46 00 46 48 46 46 00 46 00 46 00 46 00 46 00 46 46 46 00 46 00 46 00 46 46 46 46 46 46 48 46 46 46 00 00 46 00 46 00 46 00 48 00 46 46 00 46 00 46 00 46 00 46 00 46 46 46 46 46 46 00 46 00 46 00 46 00 46 46 46 00 46 48 46 46 00 46 00 46 46 00 46 00 46 00 46 00 46 46 00 46 00 46 00 00 00 46 46 46 46 46 00 46 00 46 46 46 46 00 46 00 46 46 48 46 48 46 00 46 00 46 00 46 00 46 00 46 00 46 46 46 46 46 46 48 00 46 46 46 00 46 00 46 00 46 00 48 46 46 00 46 00 46 48 48 00 46 00 46 46 00 46 00 46 00 46 46 00 46 00 00 46 46 00 00 00 00 46 46 46 46 00 46 46 00 48 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 00 46 46 00 46 46 00 46 00 46 00 48 00 46 00 48 00 46 46 00 46 00 46 00 46 46 00 46 48 46 00 46 46 46 46 00 00 46 48 46 48
*/
