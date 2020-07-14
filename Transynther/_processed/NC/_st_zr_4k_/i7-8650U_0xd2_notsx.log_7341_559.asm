.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x13a59, %r10
clflush (%r10)
nop
cmp %r8, %r8
movups (%r10), %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0x51c6, %rsi
lea addresses_D_ht+0x17269, %rdi
nop
inc %r13
mov $76, %rcx
rep movsl
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x132b1, %rsi
lea addresses_normal_ht+0x4f69, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $78, %rcx
rep movsl
nop
nop
nop
sub $16873, %r10
lea addresses_WT_ht+0x1c69, %rdi
nop
nop
nop
nop
xor %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
cmp $58049, %r8
lea addresses_WT_ht+0x11c69, %rcx
clflush (%rcx)
nop
cmp $5646, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x9aa9, %r13
nop
nop
nop
sub $23368, %rdi
mov (%r13), %si
nop
nop
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x1e909, %rdx
nop
nop
and $56209, %rsi
mov (%rdx), %r10w
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x1c8a9, %rsi
lea addresses_WC_ht+0x69d1, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $62, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0xee69, %r8
nop
nop
nop
nop
xor %rdx, %rdx
movl $0x61626364, (%r8)
nop
nop
nop
cmp $54157, %r10
lea addresses_normal_ht+0x9369, %rdx
nop
cmp $29519, %rbp
mov (%rdx), %rsi
nop
nop
lfence
lea addresses_UC_ht+0x1fe9, %rsi
lea addresses_D_ht+0x21e1, %rdi
nop
and $19208, %r10
mov $86, %rcx
rep movsw
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_WT+0x3a69, %r12
nop
nop
inc %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_A+0xcf1, %rbp
clflush (%rbp)
inc %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movntdq %xmm4, (%rbp)
sub %r11, %r11

// Store
mov $0x5c95cd00000000e9, %rbp
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rbp)
nop
and $62841, %rcx

// Store
mov $0x269, %r12
clflush (%r12)
nop
nop
nop
sub $12679, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movaps %xmm5, (%r12)
nop
nop
cmp %r11, %r11

// Load
lea addresses_A+0x1fa69, %r12
nop
nop
nop
nop
cmp %rdi, %rdi
movb (%r12), %cl
nop
nop
dec %rbx

// Store
lea addresses_WT+0x4889, %r11
dec %rdi
movl $0x51525354, (%r11)
nop
nop
add %r11, %r11

// Faulty Load
mov $0x6bc7ca0000000269, %rbx
nop
nop
nop
nop
nop
xor $34572, %rcx
movups (%rbx), %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'58': 7335, '00': 6}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
