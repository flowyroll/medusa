.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x815e, %r8
nop
nop
xor $38492, %rsi
movb $0x61, (%r8)
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x1cdbc, %r12
nop
nop
nop
nop
nop
dec %r8
movb (%r12), %cl
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0x1d6da, %r8
nop
nop
nop
nop
nop
dec %r15
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x72da, %rdi
and $24881, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm5
and $0xffffffffffffffc0, %rdi
vmovaps %ymm5, (%rdi)
nop
nop
dec %r13
lea addresses_D_ht+0x1d7da, %rsi
lea addresses_normal_ht+0xe65a, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $1, %rcx
rep movsb
sub $48177, %rcx
lea addresses_D_ht+0xcbda, %r12
and %r15, %r15
movups (%r12), %xmm7
vpextrq $0, %xmm7, %r8
nop
cmp $35269, %rdi
lea addresses_D_ht+0x1b862, %rdi
nop
nop
nop
nop
inc %rcx
movw $0x6162, (%rdi)
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x1dbb2, %rcx
clflush (%rcx)
nop
nop
nop
cmp $50548, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rcx)
nop
xor $53021, %r8
lea addresses_WC_ht+0xa7da, %r13
clflush (%r13)
nop
nop
nop
sub $35368, %rdi
mov (%r13), %r15
cmp $4357, %rdi
lea addresses_D_ht+0x1bfda, %rsi
lea addresses_WC_ht+0x1e0ca, %rdi
nop
nop
add %r8, %r8
mov $84, %rcx
rep movsw
nop
nop
nop
nop
sub $24053, %rdi
lea addresses_normal_ht+0x1b8da, %r15
xor %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r15)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0xc75a, %rsi
lea addresses_UC_ht+0x1025a, %rdi
nop
cmp %r8, %r8
mov $86, %rcx
rep movsq
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x739a, %r12
nop
nop
sub $47193, %r15
mov (%r12), %r8d
nop
nop
nop
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rdx
push %rsi

// Store
lea addresses_UC+0x1cfda, %rsi
nop
add $2739, %r12
mov $0x5152535455565758, %r11
movq %r11, (%rsi)
nop
nop
sub $61105, %rdx

// Store
lea addresses_WT+0x9422, %r12
nop
nop
nop
nop
nop
add %rax, %rax
movl $0x51525354, (%r12)
dec %r8

// Store
lea addresses_WC+0x1bdca, %rdx
nop
nop
nop
inc %r14
movl $0x51525354, (%rdx)
nop
nop
nop
and $25680, %r12

// Store
lea addresses_A+0x13bda, %r12
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, (%r12)
nop
nop
cmp $45162, %rsi

// Store
lea addresses_UC+0xe182, %r8
clflush (%r8)
nop
nop
nop
nop
and $62365, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
nop
add %rsi, %rsi

// Store
lea addresses_A+0x1afda, %rsi
nop
nop
nop
sub $4172, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rsi)
sub $64278, %rax

// Faulty Load
lea addresses_A+0x13bda, %r12
clflush (%r12)
dec %r14
movups (%r12), %xmm0
vpextrq $1, %xmm0, %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 33}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
