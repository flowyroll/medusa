.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x9c99, %r10
nop
nop
nop
nop
dec %rax
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
nop
nop
sub $47310, %rax
lea addresses_WT_ht+0x107bb, %rdx
nop
nop
nop
nop
and $52630, %rax
movups (%rdx), %xmm5
vpextrq $1, %xmm5, %r13
cmp %r10, %r10
lea addresses_normal_ht+0x19ebb, %r8
xor %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%r8)
cmp %r10, %r10
lea addresses_D_ht+0xaafb, %r8
nop
nop
nop
nop
cmp %r10, %r10
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
lfence
lea addresses_UC_ht+0xe21b, %rsi
lea addresses_normal_ht+0x3bb, %rdi
clflush (%rsi)
nop
add $13036, %r15
mov $33, %rcx
rep movsq
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x106bb, %rsi
lea addresses_D_ht+0x1a1d, %rdi
nop
nop
nop
xor %r8, %r8
mov $75, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0x1ec3d, %rcx
nop
nop
sub $14212, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x173fb, %r8
nop
nop
nop
nop
dec %rdx
movups (%r8), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbp
push %rdi

// Faulty Load
lea addresses_normal+0x54bb, %rax
nop
nop
nop
nop
nop
add $23997, %rdi
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdi
pop %rbp
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'34': 202}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
