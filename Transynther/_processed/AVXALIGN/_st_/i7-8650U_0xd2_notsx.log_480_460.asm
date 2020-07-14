.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1441, %rdi
clflush (%rdi)
xor $50407, %rdx
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm3
vpextrq $0, %xmm3, %rax
nop
inc %r12
lea addresses_WC_ht+0xa7c1, %r10
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%r10)
nop
cmp $1842, %r10
lea addresses_WC_ht+0x4e29, %rdx
nop
nop
nop
nop
sub $54490, %r11
vmovups (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0x1e033, %r12
nop
nop
nop
and $59016, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%r12)
nop
nop
and $47476, %rdx
lea addresses_D_ht+0x3507, %r11
nop
nop
nop
nop
nop
sub $58878, %r10
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x19921, %rsi
lea addresses_normal_ht+0x9de5, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $79, %rcx
rep movsw
nop
nop
nop
nop
nop
and $45505, %r14
lea addresses_WT_ht+0x29cb, %rsi
lea addresses_UC_ht+0x1a941, %rdi
nop
xor %r12, %r12
mov $113, %rcx
rep movsb
cmp %rcx, %rcx
lea addresses_WC_ht+0x1c841, %rsi
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rsi)
and $46136, %r10
lea addresses_normal_ht+0x1c141, %rsi
lea addresses_D_ht+0x1ac49, %rdi
nop
nop
inc %r12
mov $26, %rcx
rep movsl
inc %rsi
lea addresses_WT_ht+0x16771, %rax
add %rcx, %rcx
movb (%rax), %r14b
nop
nop
nop
nop
cmp $62284, %rcx
lea addresses_WT_ht+0x541, %rsi
lea addresses_D_ht+0x8721, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $25, %rcx
rep movsq
nop
and %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rdi
push %rsi

// Faulty Load
lea addresses_normal+0xfa41, %rdi
mfence
mov (%rdi), %r15w
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'34': 480}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
