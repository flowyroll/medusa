.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x12d32, %r11
and %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
and $0xffffffffffffffc0, %r11
vmovaps %ymm0, (%r11)
add $45623, %r15
lea addresses_WT_ht+0xae10, %rsi
lea addresses_D_ht+0x1e272, %rdi
nop
nop
nop
xor %r15, %r15
mov $87, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x1692, %rsi
lea addresses_UC_ht+0x3272, %rdi
nop
nop
nop
nop
sub $21240, %r12
mov $11, %rcx
rep movsq
nop
nop
nop
dec %r11
lea addresses_D_ht+0x1ba32, %r15
cmp %rbx, %rbx
mov (%r15), %edi
nop
nop
sub $48755, %rdi
lea addresses_UC_ht+0x4a72, %rcx
sub $35270, %rdi
movb (%rcx), %r11b
sub $59950, %r12
lea addresses_A_ht+0xbe72, %rdi
nop
and %r11, %r11
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
nop
and $7314, %rcx
lea addresses_UC_ht+0x17b2, %r12
nop
nop
nop
nop
nop
dec %r11
mov (%r12), %esi
nop
nop
inc %rdi
lea addresses_UC_ht+0x12272, %r12
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r12)
nop
nop
nop
nop
nop
lfence
lea addresses_A_ht+0x14928, %rdi
clflush (%rdi)
nop
sub $45623, %rsi
movl $0x61626364, (%rdi)
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x82ac, %rsi
nop
nop
nop
nop
inc %r12
movb (%rsi), %bl
nop
nop
xor $65058, %rcx
lea addresses_D_ht+0x9572, %rcx
add %rbx, %rbx
mov (%rcx), %rdi
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x13572, %rsi
lea addresses_WT_ht+0x1272, %rdi
nop
nop
sub %rdx, %rdx
mov $10, %rcx
rep movsb
nop
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0x12368, %rsi
lea addresses_normal_ht+0x6c42, %rdi
nop
nop
nop
add %rbx, %rbx
mov $14, %rcx
rep movsq
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rax
push %rcx

// Store
mov $0xcf2, %rcx
cmp %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
nop
nop
nop
nop
xor $59881, %r12

// Store
lea addresses_WT+0xfea, %r10
nop
and %r15, %r15
movb $0x51, (%r10)
nop
nop
nop
sub $64405, %r12

// Store
lea addresses_UC+0xe6e7, %r8
nop
nop
nop
add %rcx, %rcx
movw $0x5152, (%r8)
sub $28538, %r8

// Store
lea addresses_WT+0x2472, %r10
nop
nop
nop
dec %r8
mov $0x5152535455565758, %rax
movq %rax, (%r10)
sub $30443, %r10

// Store
lea addresses_UC+0x1751a, %rax
nop
nop
nop
nop
nop
add %r8, %r8
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WC+0x7272, %r9
nop
nop
add %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_RW+0x16a72, %r9
clflush (%r9)
nop
add %r10, %r10
movb $0x51, (%r9)
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
mov $0x59c8a0000000272, %r15
clflush (%r15)
nop
nop
nop
nop
cmp $57071, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%r15)
cmp $12904, %rax

// Store
mov $0x3a878d0000000a72, %r15
nop
sub $8638, %rax
movl $0x51525354, (%r15)
nop
cmp %r15, %r15

// Faulty Load
mov $0x59c8a0000000272, %r10
dec %r8
mov (%r10), %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}}
{'58': 20963, '60': 9, '00': 857}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58
*/
