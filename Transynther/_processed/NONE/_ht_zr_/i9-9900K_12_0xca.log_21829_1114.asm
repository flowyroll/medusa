.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x8d96, %rsi
lea addresses_normal_ht+0x1d0d6, %rdi
nop
nop
nop
add %r15, %r15
mov $4, %rcx
rep movsl
sub $13489, %rdi
lea addresses_UC_ht+0xb4d6, %r10
nop
nop
add %r11, %r11
movb (%r10), %cl
nop
nop
nop
nop
nop
add $39716, %r10
lea addresses_UC_ht+0x70d6, %r10
nop
inc %rdi
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0xec06, %r10
cmp %rcx, %rcx
movups (%r10), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x15a56, %rsi
lea addresses_A_ht+0x148d6, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $12, %rcx
rep movsl
nop
cmp $35977, %rcx
lea addresses_A_ht+0x8d6, %rsi
lea addresses_D_ht+0x4ff2, %rdi
xor %r11, %r11
mov $103, %rcx
rep movsl
nop
nop
and $48719, %rsi
lea addresses_A_ht+0x174c6, %r10
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %r10
vmovntdq %ymm3, (%r10)
nop
and $65155, %rdi
lea addresses_D_ht+0xe218, %rdi
nop
nop
xor %r15, %r15
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_A_ht+0x1eae2, %rcx
nop
nop
nop
nop
nop
sub $62042, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm2
and $0xffffffffffffffc0, %rcx
movntdq %xmm2, (%rcx)
nop
add %r15, %r15
lea addresses_normal_ht+0x1c2fe, %rsi
nop
nop
inc %r15
movb (%rsi), %r11b
nop
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rdx

// Store
lea addresses_normal+0x1a6d6, %rax
nop
nop
add $6995, %r13
mov $0x5152535455565758, %r10
movq %r10, (%rax)

// Exception!!!
nop
nop
nop
nop
mov (0), %rax
nop
nop
nop
nop
inc %r14

// Store
lea addresses_WC+0x1313a, %r13
and $11934, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
xor %r14, %r14

// Store
mov $0xe76, %rax
cmp $33930, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
and %r10, %r10

// Store
lea addresses_A+0x1aed6, %rax
and $11065, %r13
movw $0x5152, (%rax)
nop
add %r10, %r10

// Store
lea addresses_A+0xf5d6, %r13
nop
nop
nop
nop
cmp $40170, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %r13
movaps %xmm2, (%r13)
cmp $47707, %rax

// Store
lea addresses_PSE+0x19716, %rbp
nop
nop
and $13509, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_normal+0x11ad6, %rax
clflush (%rax)
cmp $25997, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rax)
nop
nop
and $2525, %r13

// Store
lea addresses_D+0x1d0d6, %rax
nop
nop
nop
add $34766, %rbp
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
nop
cmp %rax, %rax

// Faulty Load
lea addresses_A+0xc0d6, %r10
nop
nop
nop
nop
nop
sub $20913, %r15
vmovups (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'45': 24, '00': 21805}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
