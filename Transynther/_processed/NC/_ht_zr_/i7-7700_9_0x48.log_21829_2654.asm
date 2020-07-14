.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xc560, %r8
clflush (%r8)
nop
nop
nop
nop
inc %rdi
mov (%r8), %rdx
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x33e0, %rcx
nop
nop
sub $29798, %r10
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
cmp $9737, %rdi
lea addresses_A_ht+0x10160, %r10
nop
nop
nop
nop
nop
cmp %r8, %r8
movb (%r10), %cl
nop
nop
nop
nop
cmp $48219, %rdi
lea addresses_normal_ht+0x5d60, %rcx
nop
nop
nop
nop
nop
and %r8, %r8
mov (%rcx), %r10w
nop
xor %r8, %r8
lea addresses_WC_ht+0x128c0, %r8
nop
add $58644, %rax
mov (%r8), %r10w
nop
nop
inc %rdx
lea addresses_UC_ht+0x14888, %rdx
nop
and $46528, %rdi
movw $0x6162, (%rdx)
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x2f60, %r8
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r8)
nop
nop
xor $47171, %r9
lea addresses_D_ht+0x75e0, %rax
nop
nop
nop
nop
nop
cmp $63043, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%rax)
nop
add $25996, %r10
lea addresses_WT_ht+0xd460, %r8
nop
nop
nop
nop
nop
cmp $3642, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r8)
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x1af60, %rsi
lea addresses_normal_ht+0x11528, %rdi
xor %rax, %rax
mov $107, %rcx
rep movsb
nop
nop
nop
cmp $57562, %r9
lea addresses_normal_ht+0x11ac0, %r9
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%r9)
nop
cmp %rax, %rax
lea addresses_WC_ht+0x171c8, %rdi
nop
nop
nop
nop
nop
sub $56758, %r10
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
inc %rsi
lea addresses_UC_ht+0x6760, %rsi
lea addresses_WC_ht+0x14750, %rdi
nop
nop
xor $7266, %rdx
mov $7, %rcx
rep movsb
nop
nop
nop
nop
add $16196, %rdx
lea addresses_normal_ht+0x7b60, %rsi
inc %r8
mov (%rsi), %r9
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x86e0, %rsi
nop
nop
nop
nop
and %r10, %r10
mov (%rsi), %dx
nop
nop
nop
xor $55688, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rax
push %rdi

// Faulty Load
mov $0x49a4da0000000960, %r13
nop
nop
nop
xor %r14, %r14
movups (%r13), %xmm7
vpextrq $1, %xmm7, %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': True, 'NT': False}}
{'48': 633, '44': 1412, '46': 13657, '00': 6127}
00 46 00 46 46 00 00 46 48 46 46 46 46 00 46 46 46 00 00 00 46 46 00 46 46 46 00 46 00 46 46 46 00 46 00 00 00 00 46 46 46 46 46 46 00 46 44 46 46 46 46 46 46 46 00 46 46 00 46 46 00 00 46 46 46 46 44 44 46 46 46 46 46 46 44 46 00 46 46 44 00 46 46 46 46 46 00 46 46 46 00 00 00 46 44 46 00 46 00 46 46 00 00 46 46 00 46 46 00 46 46 44 00 46 00 00 00 46 44 00 46 46 46 44 46 44 46 46 46 00 46 46 46 46 46 46 00 00 46 00 46 48 00 46 00 46 46 46 44 00 46 46 46 46 46 46 46 00 00 46 48 46 00 46 00 00 00 46 46 46 46 00 46 46 00 46 46 46 46 46 00 46 46 44 46 46 00 46 00 00 44 46 46 46 00 46 46 46 00 00 46 46 46 46 46 00 00 46 46 46 46 00 46 44 46 44 44 46 44 48 46 00 46 46 46 46 46 00 46 46 00 00 00 46 46 46 46 46 44 46 46 00 00 46 46 46 46 46 46 46 00 44 46 00 46 46 44 46 00 00 46 46 46 00 00 46 46 46 46 46 46 46 46 46 44 00 46 46 00 46 00 46 46 46 46 00 46 46 00 00 46 46 00 48 46 46 00 00 00 00 00 46 46 46 00 46 46 00 46 46 46 00 46 46 46 00 00 46 44 46 46 46 00 46 46 46 44 00 46 46 00 46 00 46 46 46 44 00 44 44 46 46 46 46 00 00 46 46 44 46 44 46 46 46 46 00 00 46 46 46 00 00 46 46 46 44 46 00 46 46 46 46 44 00 46 00 46 46 00 00 00 46 44 00 46 46 46 46 00 00 46 00 46 44 48 44 46 00 00 46 48 46 46 00 46 44 46 48 46 46 46 46 46 00 00 46 46 44 46 46 46 00 46 46 46 46 46 46 46 00 46 46 44 46 46 46 46 46 46 00 46 46 46 00 00 44 00 00 46 00 46 00 48 46 46 48 46 46 46 46 44 00 44 00 00 46 46 00 46 46 46 46 00 46 44 00 00 46 46 46 00 46 44 46 46 00 46 00 00 46 46 00 46 46 00 46 46 00 46 46 00 46 46 00 00 46 46 44 00 44 46 00 46 46 46 00 46 46 44 46 46 48 46 00 00 46 48 46 46 46 46 46 46 00 46 00 46 46 00 00 46 46 00 00 46 46 00 00 00 00 00 46 46 46 00 46 46 46 46 46 00 00 46 46 00 00 00 46 46 46 46 48 00 46 46 46 46 00 46 46 00 46 46 46 00 46 46 46 44 46 46 00 46 46 00 00 48 46 00 46 46 00 46 46 44 46 46 44 00 46 46 46 46 46 44 46 46 46 00 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 00 46 44 00 46 46 00 46 46 46 46 46 44 46 46 00 46 46 46 46 00 00 46 46 44 00 46 46 46 44 46 46 46 00 46 46 46 46 46 46 46 46 00 46 00 46 46 00 00 00 46 00 00 46 46 44 00 46 46 00 46 46 46 00 46 46 00 46 46 46 46 00 46 46 46 00 46 46 00 46 46 46 46 00 00 00 46 46 00 46 00 46 46 46 44 46 46 46 46 46 00 00 46 46 00 00 00 46 46 00 46 00 46 46 46 00 46 00 46 46 46 46 00 46 46 46 46 00 46 00 46 46 46 46 44 00 46 00 46 44 46 46 44 48 46 00 00 46 46 46 46 46 00 48 00 46 46 46 46 00 00 46 46 00 46 46 44 00 00 46 46 48 00 46 46 00 00 46 46 44 00 46 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 00 46 46 46 46 44 46 46 46 46 00 46 46 44 00 46 46 00 46 00 46 46 46 46 00 00 00 44 00 46 00 00 00 46 46 00 46 00 46 00 00 00 46 46 00 44 00 46 46 00 46 46 44 00 48 46 46 44 46 46 46 44 00 46 46 46 46 00 00 00 46 46 44 46 00 46 46 46 46 00 46 44 00 46 44 46 46 46 44 00 46 00 46 46 00 46 46 46 00 46 46 44 46 46 46 44 00 00 46 46 46 00 46 46 00 46 00 46 46 46 46 46 44 46 00 46 46 46 00 00 46 00 46 46 00 46 46 00 48 46 00 46 46 46 46 46 46 46 00 46 00 00 46 46 46 46
*/
