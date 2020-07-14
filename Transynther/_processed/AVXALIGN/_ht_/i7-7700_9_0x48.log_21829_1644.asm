.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb3a9, %r9
nop
nop
nop
nop
nop
dec %rcx
movb (%r9), %r14b
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x1409d, %r8
nop
nop
nop
inc %r14
mov (%r8), %ebp
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x650d, %rsi
lea addresses_normal_ht+0xabdd, %rdi
clflush (%rdi)
nop
cmp %r13, %r13
mov $111, %rcx
rep movsq
nop
nop
nop
nop
add $34239, %r9
lea addresses_WC_ht+0x1d62d, %r14
clflush (%r14)
cmp %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%r14)
cmp %rsi, %rsi
lea addresses_D_ht+0x1cc69, %rsi
lea addresses_WC_ht+0x2dcb, %rdi
nop
nop
nop
nop
nop
add $54523, %rbp
mov $111, %rcx
rep movsl
nop
sub %r14, %r14
lea addresses_A_ht+0x3465, %r13
nop
nop
nop
nop
nop
and $59264, %rbp
movb $0x61, (%r13)
nop
sub %rsi, %rsi
lea addresses_D_ht+0x6bfd, %r9
sub %rcx, %rcx
vmovups (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
nop
and $53837, %r8
lea addresses_A_ht+0x1465d, %r8
nop
nop
and $4986, %r9
movw $0x6162, (%r8)
and %r14, %r14
lea addresses_A_ht+0x125d, %rcx
nop
nop
sub %r8, %r8
movb (%rcx), %r14b
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x18a15, %rsi
lea addresses_A_ht+0x16e7d, %rdi
nop
and $22891, %r13
mov $56, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x1d1dd, %r13
sub %rcx, %rcx
movw $0x6162, (%r13)
xor $34966, %r9
lea addresses_normal_ht+0xb637, %r9
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x61, (%r9)
and %rbp, %rbp
lea addresses_normal_ht+0x14323, %r13
dec %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
nop
and $45138, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rbx
push %rdi
push %rdx

// Store
mov $0x925, %rax
nop
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%rax)
nop
nop
dec %r11

// Load
lea addresses_WC+0x132db, %rbx
cmp %rdi, %rdi
mov (%rbx), %r15d
nop
nop
cmp $50908, %r11

// Faulty Load
lea addresses_PSE+0x1a25d, %r15
clflush (%r15)
nop
nop
nop
inc %rdi
vmovaps (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'49': 4813, '45': 15156, '46': 1860}
49 49 46 45 49 45 49 49 45 45 45 45 45 45 45 45 49 49 49 45 49 45 45 49 45 49 49 46 45 45 49 45 45 45 45 45 49 49 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 46 49 45 45 45 45 45 49 45 49 45 49 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 46 45 45 46 45 45 45 49 45 45 45 45 45 45 49 45 45 45 46 45 45 45 45 45 49 49 45 45 45 46 45 45 45 45 45 45 45 45 49 49 49 45 45 46 45 45 46 45 49 49 46 45 49 45 45 45 45 49 45 45 45 45 45 49 49 45 45 45 49 45 45 45 45 45 45 45 45 46 49 45 45 49 45 45 45 45 45 45 46 46 45 45 49 45 49 45 49 45 45 45 45 45 49 45 45 45 46 45 45 45 45 45 49 45 49 49 45 45 46 45 49 49 45 45 49 46 45 45 45 49 46 49 45 49 49 45 45 45 49 45 45 45 49 46 49 45 49 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 49 45 49 49 45 45 46 45 45 45 49 49 45 45 45 45 45 45 45 45 46 49 45 45 45 45 45 46 49 45 45 45 45 45 45 45 45 49 49 45 45 45 49 45 45 49 49 45 49 45 45 49 46 49 45 49 49 45 46 45 45 45 46 45 45 45 45 49 46 49 46 45 45 49 45 49 45 49 46 45 45 45 45 45 45 45 45 49 45 45 46 49 45 45 45 46 45 45 45 49 49 45 45 45 45 45 46 45 49 45 45 45 46 45 45 45 46 45 45 46 49 45 49 45 46 45 45 45 46 45 49 46 49 45 45 45 45 49 45 45 45 45 46 45 45 46 45 45 45 45 45 49 45 45 49 45 49 46 45 45 45 45 45 45 46 45 45 45 45 49 45 49 45 49 45 45 46 45 45 45 45 45 45 45 45 45 46 49 45 45 45 45 45 45 45 45 49 45 45 45 46 46 45 45 45 49 45 49 45 45 45 45 45 45 49 45 45 45 45 45 49 45 49 45 46 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 45 45 45 45 46 45 49 45 45 45 45 45 46 45 49 45 49 49 46 45 45 49 45 45 46 49 45 45 45 49 45 45 45 49 45 46 49 45 49 45 45 45 45 45 49 45 49 45 45 45 49 49 45 45 45 49 49 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 49 49 45 49 49 46 49 45 45 49 46 49 45 45 45 45 45 45 45 49 45 49 45 49 49 45 45 49 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 46 45 45 45 49 45 49 49 49 45 45 45 45 45 45 45 45 45 49 45 49 45 49 45 45 49 45 49 49 45 46 45 46 49 45 45 49 45 49 45 45 45 45 49 45 49 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 45 46 49 45 45 49 45 45 45 49 49 45 49 45 49 45 45 45 45 45 45 45 46 49 45 45 45 45 45 45 45 45 49 49 45 49 45 45 45 49 49 45 45 45 45 45 45 45 49 45 45 45 49 45 45 45 45 45 45 45 49 45 49 45 45 45 49 46 45 45 45 45 46 46 46 49 46 46 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 46 49 45 45 46 46 45 45 45 45 49 49 46 45 45 45 45 45 49 45 45 45 45 49 49 49 45 49 49 45 45 45 45 45 45 49 45 45 45 49 45 49 45 45 49 45 49 45 45 45 46 46 45 49 49 45 45 45 45 46 49 45 45 49 45 49 45 46 45 49 46 45 45 45 45 46 45 45 45 49 49 45 46 49 45 45 45 49 49 45 45 49 45 45 49 45 45 49 49 45 46 45 45 49 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 49 45 45 45 45 49 46 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 46 45 49 45 45 45 45 49 45 45 45 49 49 45 46 45 45 45 45 45 46 45 45 45 45 46 45 49 45 45 45
*/
