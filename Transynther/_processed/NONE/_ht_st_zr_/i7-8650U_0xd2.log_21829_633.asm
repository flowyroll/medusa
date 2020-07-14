.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1c70b, %rsi
lea addresses_WC_ht+0x3bb3, %rdi
cmp $26434, %rax
mov $81, %rcx
rep movsq
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x258b, %rsi
lea addresses_A_ht+0x16353, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $46, %rcx
rep movsq
nop
sub $22083, %rcx
lea addresses_WC_ht+0x18b5b, %rsi
nop
dec %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0xe86b, %rsi
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_UC_ht+0x1a6eb, %rsi
nop
nop
inc %r13
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x4eb, %r15
nop
nop
xor $52238, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
add $35070, %r15
lea addresses_UC_ht+0xeeb, %rcx
clflush (%rcx)
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %r15
movq %r15, %xmm2
and $0xffffffffffffffc0, %rcx
vmovaps %ymm2, (%rcx)
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xbceb, %rdi
nop
and %r8, %r8
movl $0x61626364, (%rdi)
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x196eb, %rsi
clflush (%rsi)
nop
nop
nop
nop
add $47066, %rcx
mov (%rsi), %di
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdx

// Load
lea addresses_D+0x1aa2b, %r15
nop
nop
xor %r14, %r14
movups (%r15), %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
dec %rcx

// Store
mov $0xaeb, %rbx
nop
nop
add $58782, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%rbx)
and %rbx, %rbx

// Store
lea addresses_RW+0x2a0b, %r15
nop
nop
nop
nop
cmp $29535, %rbx
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
xor $38695, %rbx

// Store
lea addresses_A+0x7101, %r15
nop
nop
add %rax, %rax
movw $0x5152, (%r15)
nop
nop
and %rax, %rax

// Store
lea addresses_WC+0x1d25b, %r14
nop
nop
sub $40746, %rdx
movl $0x51525354, (%r14)
nop
nop
nop
inc %rcx

// Store
lea addresses_normal+0x22b, %r12
nop
sub $44241, %rax
mov $0x5152535455565758, %r14
movq %r14, (%r12)
nop
nop
nop
nop
add %rax, %rax

// Store
mov $0x5f067300000006eb, %r12
dec %rcx
movb $0x51, (%r12)
nop
nop
nop
nop
nop
xor %r14, %r14

// Load
lea addresses_WT+0x1afcb, %rdx
nop
and $56725, %rax
mov (%rdx), %r15d
nop
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_WC+0x192eb, %rbx
nop
nop
nop
cmp %rax, %rax
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'36': 13909, '00': 7065, '44': 389, '48': 466}
36 36 00 00 36 36 00 36 36 36 00 36 36 00 00 36 36 36 00 00 00 36 36 36 00 00 00 36 36 36 36 36 36 00 00 36 36 36 44 36 00 36 36 36 00 36 36 36 36 36 00 36 36 36 36 00 36 36 00 36 36 00 36 36 00 00 36 00 36 36 00 36 36 36 36 36 00 36 36 00 36 36 36 48 36 00 00 00 36 36 36 36 36 48 44 36 44 36 36 36 36 36 00 36 00 48 36 00 48 36 36 36 48 36 00 00 00 00 00 00 36 36 36 00 36 36 36 00 36 00 36 36 36 48 36 00 36 00 00 00 00 36 36 36 36 36 36 36 36 48 00 36 00 00 36 36 48 36 00 00 36 00 00 00 36 00 36 00 36 00 36 00 36 00 36 36 36 36 36 36 36 36 36 00 36 00 36 00 00 36 36 00 00 36 36 36 48 36 36 36 00 00 36 36 00 00 00 00 36 44 00 36 36 36 44 36 00 36 00 36 36 36 36 36 36 00 00 36 36 00 00 00 00 36 00 36 36 00 00 36 36 36 00 36 36 36 00 36 36 36 48 36 36 36 36 00 36 00 36 48 36 36 36 00 36 36 36 36 00 36 36 00 36 36 36 36 00 36 00 36 00 00 36 36 36 36 36 36 36 00 00 00 36 36 00 36 36 00 00 36 00 00 00 00 36 36 36 36 00 00 36 36 36 36 00 36 36 36 36 00 36 36 00 36 00 36 36 36 36 00 00 36 36 36 36 36 36 36 36 00 36 00 36 36 00 36 00 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 00 36 00 36 36 36 00 00 36 36 36 36 44 36 36 36 36 36 36 36 36 36 36 36 36 00 48 36 00 36 36 36 36 36 36 00 36 36 36 36 36 36 00 00 36 00 36 36 36 36 36 36 00 00 48 48 36 36 44 00 36 36 36 36 36 00 36 36 36 00 00 36 00 36 00 36 00 36 00 00 36 36 36 36 00 36 36 00 00 36 36 36 36 36 36 36 00 36 36 36 00 36 44 00 36 00 00 36 00 36 00 36 36 00 36 36 36 36 36 00 36 00 00 00 00 36 36 36 36 36 36 36 36 36 00 48 36 36 36 00 36 00 36 00 00 36 36 00 00 36 36 36 36 36 36 36 36 36 00 36 36 36 00 36 00 36 36 36 36 36 36 00 36 36 36 00 00 36 00 00 00 36 00 36 00 36 36 36 36 00 00 36 00 36 36 36 36 36 00 00 00 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 00 00 36 36 36 36 36 36 36 36 36 36 36 00 36 00 36 36 36 00 00 36 36 36 00 36 36 48 00 36 00 36 36 36 36 36 00 36 00 36 36 36 44 00 36 36 00 36 36 36 00 00 00 00 00 00 00 00 00 36 48 36 00 36 00 00 00 36 36 36 36 36 00 36 00 36 00 36 36 00 36 36 36 00 36 36 36 36 00 00 36 36 00 00 36 36 36 00 36 36 00 36 36 00 36 36 36 00 36 36 00 36 36 36 36 00 36 00 36 44 36 36 36 36 36 36 36 36 00 00 36 00 00 36 00 36 36 48 36 36 36 36 36 36 00 36 36 36 36 36 36 00 00 36 36 00 36 00 00 48 36 44 00 36 36 00 36 36 00 36 00 00 36 36 00 36 44 00 36 36 36 36 36 00 36 00 36 36 00 48 00 00 36 36 36 36 36 36 36 36 36 00 36 00 36 36 36 36 36 36 36 36 36 00 36 36 36 00 36 36 00 36 36 36 36 00 36 36 00 36 36 36 48 00 36 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 44 36 36 00 00 36 00 00 36 36 00 36 36 36 36 36 36 44 36 36 00 48 48 36 36 00 36 36 36 36 36 48 48 36 36 36 00 00 36 36 36 36 00 36 36 36 00 36 36 36 00 00 48 00 36 36 00 36 36 36 36 36 00 00 00 00 36 00 00 36 36 36 00 36 48 36 00 36 48 36 00 36 36 36 36 36 00 36 00 00 36 36 00 00 36 36 00 36 36 36 36 36 36 00 36 36 00 36 36 36 36 36 00 36 36 00 36 36 00 00 00 36 00 00 00 36 00 36 36 36 00 00 36 36 00 00 36 36 36 36 00 36 00 36 00 36 36 36 36 36 44 36 36 36 36 36 36 36 00 36 00 00 36 00 00
*/
