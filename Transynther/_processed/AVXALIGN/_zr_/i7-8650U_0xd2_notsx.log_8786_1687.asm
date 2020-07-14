.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xbf30, %r14
nop
nop
nop
nop
nop
sub $1693, %r12
vmovups (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
cmp %r14, %r14
lea addresses_WC_ht+0x1b808, %rsi
lea addresses_WT_ht+0x1c08, %rdi
clflush (%rdi)
nop
add %r13, %r13
mov $0, %rcx
rep movsq
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x717c, %rsi
lea addresses_WT_ht+0x6208, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov $105, %rcx
rep movsq
nop
nop
nop
nop
nop
and $14850, %r12
lea addresses_WC_ht+0x9408, %rsi
lea addresses_WT_ht+0x19608, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r15
mov $84, %rcx
rep movsl
nop
dec %r12
lea addresses_UC_ht+0xc748, %rsi
lea addresses_WT_ht+0x4408, %rdi
nop
nop
nop
sub $38364, %r8
mov $110, %rcx
rep movsw
xor %rsi, %rsi
lea addresses_WC_ht+0x1e908, %rsi
lea addresses_D_ht+0x14718, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $79, %rcx
rep movsw
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x9008, %rsi
lea addresses_WT_ht+0x9408, %rdi
nop
nop
nop
nop
nop
xor $35871, %r15
mov $3, %rcx
rep movsb
nop
nop
nop
nop
and $1345, %r15
lea addresses_WT_ht+0x11e84, %rdi
nop
nop
nop
inc %rsi
movw $0x6162, (%rdi)
nop
nop
nop
nop
xor $50372, %r15
lea addresses_normal_ht+0xd808, %r14
nop
add %rcx, %rcx
movw $0x6162, (%r14)
nop
nop
nop
and $6271, %rcx
lea addresses_UC_ht+0xbd14, %rcx
nop
nop
nop
nop
nop
inc %rsi
mov (%rcx), %r14
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x17948, %r12
nop
nop
inc %rsi
movb (%r12), %cl
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x156dc, %r8
nop
sub %rcx, %rcx
vmovups (%r8), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x18e08, %rsi
nop
add %r8, %r8
mov (%rsi), %r14d
nop
xor $47490, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rdi

// Store
lea addresses_normal+0x11ef0, %r9
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
nop
xor $53784, %rdi

// Faulty Load
lea addresses_A+0x10c08, %r9
xor %r13, %r13
movaps (%r9), %xmm3
vpextrq $0, %xmm3, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 8786}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
