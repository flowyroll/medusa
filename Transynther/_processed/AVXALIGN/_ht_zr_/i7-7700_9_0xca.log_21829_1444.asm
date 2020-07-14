.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1f16, %rsi
lea addresses_A_ht+0x7cf8, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
sub $485, %r15
mov $122, %rcx
rep movsb
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x6af8, %r12
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%r12)
nop
cmp $56227, %r15
lea addresses_WC_ht+0xaa18, %rsi
nop
nop
nop
cmp %r9, %r9
movw $0x6162, (%rsi)
nop
sub %rsi, %rsi
lea addresses_D_ht+0x8e88, %rsi
lea addresses_WC_ht+0xa8f8, %rdi
nop
nop
nop
nop
add $30132, %r12
mov $72, %rcx
rep movsl
nop
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0x1d478, %rcx
nop
add $30829, %rdi
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
add $14932, %rcx
lea addresses_WC_ht+0xdff8, %r9
clflush (%r9)
nop
nop
nop
nop
nop
dec %rdi
movb (%r9), %cl
nop
nop
nop
nop
sub $48113, %r9
lea addresses_WT_ht+0x1c74c, %rsi
lea addresses_A_ht+0x1a0f8, %rdi
nop
nop
nop
cmp %r15, %r15
mov $115, %rcx
rep movsl
dec %rsi
lea addresses_A_ht+0xca78, %rsi
lea addresses_UC_ht+0x4478, %rdi
nop
and $28414, %r9
mov $19, %rcx
rep movsl
nop
nop
nop
and $518, %rdi
lea addresses_D_ht+0x130f8, %rsi
lea addresses_WT_ht+0x3e21, %rdi
nop
cmp %r9, %r9
mov $107, %rcx
rep movsl
nop
nop
and %r9, %r9
lea addresses_A_ht+0xfff8, %rsi
nop
nop
dec %r12
movb (%rsi), %r15b
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x9328, %rsi
lea addresses_A_ht+0x144f8, %rdi
dec %r9
mov $22, %rcx
rep movsl
nop
nop
nop
nop
sub %r12, %r12
lea addresses_A_ht+0xf51c, %r15
nop
nop
add %r12, %r12
movups (%r15), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
xor $17800, %r9
lea addresses_WT_ht+0x1a4f8, %r15
nop
nop
dec %rdi
mov (%r15), %r9
nop
cmp $63065, %r9
lea addresses_WT_ht+0x190f8, %rsi
lea addresses_D_ht+0xc400, %rdi
cmp $65520, %r10
mov $42, %rcx
rep movsw
nop
nop
inc %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_normal+0x168f8, %r10
nop
nop
nop
nop
nop
cmp $30519, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovntdq %ymm5, (%r10)
nop
nop
sub %rbx, %rbx

// Store
lea addresses_RW+0x1e0f8, %r8
nop
nop
nop
nop
nop
sub $44547, %r10
movb $0x51, (%r8)
nop
add $48190, %rbx

// Store
lea addresses_WT+0xb938, %r8
clflush (%r8)
nop
nop
nop
nop
cmp $60350, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%r8)
add $25352, %r10

// Store
lea addresses_RW+0xc7f8, %r8
sub $179, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_WC+0x17978, %rsi
nop
nop
nop
nop
sub %r10, %r10
movb $0x51, (%rsi)
nop
nop
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_WC+0x78f8, %rcx
nop
nop
and %r8, %r8
vmovaps (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}}
{'46': 4, '49': 7, '00': 21818}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
