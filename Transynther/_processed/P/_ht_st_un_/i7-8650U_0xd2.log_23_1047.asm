.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x109bd, %r8
clflush (%r8)
nop
nop
nop
nop
nop
sub $38144, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0xee4d, %rdx
nop
dec %rdi
movl $0x61626364, (%rdx)
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x673d, %r11
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r11)
nop
nop
and %r13, %r13
lea addresses_WT_ht+0x6f3d, %rsi
nop
nop
inc %rbx
movw $0x6162, (%rsi)
nop
and $54326, %r8
lea addresses_UC_ht+0x1418d, %r8
nop
nop
nop
and $39971, %r11
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
nop
and $20377, %r11
lea addresses_UC_ht+0x1388d, %rsi
nop
nop
nop
nop
nop
xor $18429, %r11
mov (%rsi), %ebx
nop
nop
nop
nop
nop
sub $10224, %rdx
lea addresses_A_ht+0x1b64d, %rsi
lea addresses_D_ht+0x1b85c, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $468, %r11
mov $112, %rcx
rep movsl
mfence
lea addresses_normal_ht+0xf625, %rdx
clflush (%rdx)
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
nop
cmp $63955, %rcx
lea addresses_WC_ht+0xca5d, %rsi
nop
nop
nop
cmp %r8, %r8
mov (%rsi), %r11
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1201d, %rsi
inc %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%rsi)
nop
nop
sub $26476, %rbx
lea addresses_A_ht+0x19669, %rcx
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
cmp $12614, %r11
lea addresses_normal_ht+0x899d, %r13
nop
nop
nop
sub %r8, %r8
movl $0x61626364, (%r13)
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x74f1, %r13
nop
sub %rdi, %rdi
movups (%r13), %xmm2
vpextrq $1, %xmm2, %r8
nop
nop
nop
nop
nop
and $40504, %r8
lea addresses_WC_ht+0x1473d, %r8
nop
nop
nop
cmp $28472, %rcx
movb $0x61, (%r8)
nop
nop
sub $18277, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx

// Store
lea addresses_normal+0x15aa5, %r12
nop
cmp %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
nop
cmp $52506, %r13

// Faulty Load
mov $0xf3d, %r14
nop
nop
nop
dec %r12
mov (%r14), %r13d
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'45': 16, '34': 3, '7f': 3, '48': 1}
45 34 45 45 45 45 45 45 45 7f 45 45 7f 45 45 45 45 48 7f 45 34 34 45
*/
