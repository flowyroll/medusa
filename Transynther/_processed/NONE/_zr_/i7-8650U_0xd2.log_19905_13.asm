.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xd9c2, %rcx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%rcx)
nop
nop
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x14c72, %r14
nop
nop
add %r13, %r13
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm2
vpextrq $1, %xmm2, %r11
nop
lfence
lea addresses_D_ht+0x7cd2, %r14
nop
nop
nop
xor $18601, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
nop
xor $54899, %r13
lea addresses_D_ht+0xa972, %rsi
lea addresses_WT_ht+0x72b2, %rdi
clflush (%rsi)
and $50184, %r11
mov $80, %rcx
rep movsb
nop
nop
nop
nop
sub $14971, %r10
lea addresses_D_ht+0x24f4, %rcx
clflush (%rcx)
nop
nop
nop
nop
dec %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm4
and $0xffffffffffffffc0, %rcx
movaps %xmm4, (%rcx)
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0xd472, %rsi
lea addresses_UC_ht+0x149fa, %rdi
nop
nop
nop
nop
add $36474, %r15
mov $80, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x1a23e, %r15
nop
nop
and $49586, %r14
mov (%r15), %edi
nop
nop
nop
add $28510, %rcx
lea addresses_A_ht+0x1cf92, %r10
nop
nop
nop
nop
nop
xor $45341, %r14
movl $0x61626364, (%r10)
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x11c2, %rsi
lea addresses_WC_ht+0x385e, %rdi
sub $31865, %r11
mov $95, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x9872, %rsi
nop
nop
xor %r15, %r15
movw $0x6162, (%rsi)
nop
xor $48906, %rdi
lea addresses_normal_ht+0xf11e, %r15
nop
nop
nop
and $47940, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r15)
nop
and %r15, %r15
lea addresses_UC_ht+0x8d32, %rsi
lea addresses_UC_ht+0x1e072, %rdi
nop
nop
nop
nop
xor $63163, %r10
mov $54, %rcx
rep movsb
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0xd232, %rsi
lea addresses_WC_ht+0x1e72, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $35, %rcx
rep movsq
nop
nop
and $49558, %r13
lea addresses_A_ht+0x4c72, %rsi
lea addresses_UC_ht+0xfe72, %rdi
nop
nop
nop
nop
cmp $45534, %r13
mov $76, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $61164, %rsi
lea addresses_UC_ht+0xc20a, %rdi
nop
nop
nop
dec %r15
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WC+0x5992, %rdx
nop
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_RW+0x1d872, %rdx
nop
nop
nop
nop
and $44761, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%rdx)
and %rsi, %rsi

// Load
lea addresses_D+0x9de9, %rsi
add %r8, %r8
movb (%rsi), %r9b
nop
nop
nop
nop
nop
and $750, %rsi

// Load
mov $0x4029f30000000472, %r14
nop
nop
nop
nop
dec %rdx
mov (%r14), %r12d
nop
nop
nop
nop
dec %r14

// Load
lea addresses_PSE+0x17a92, %r9
nop
xor $32260, %r12
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_UC+0x13472, %rdx
nop
nop
cmp %r12, %r12
movb (%rdx), %r8b
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 19905}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
